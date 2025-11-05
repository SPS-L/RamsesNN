    ! Auxiliary functions for the use of PINNS in dynamic power system simulations
    !
    ! List of functions: park_transform_xy_dq, park_transform_dq_xy, machine_solver
    
module aux_functions
    use iso_fortran_env, only:real64
    implicit none
    private
    public :: park_transform_xy_dq, park_transform_dq_xy, machine_solver, machine_solver_red, inf_bus_equations, assign_old_values_to_nn_input, assign_old_values_to_nn_input_red
    
contains 
    
    pure subroutine park_transform_dq_xy(d, q, delta, x, y)
        ! Park transformation from (d,q) to (x,y) reference frame
        real(real64), intent(in)  :: d, q, delta   ! delta in radians
        real(real64), intent(out) :: x, y
        real(real64) :: sin_delta, cos_delta

        sin_delta = sin(delta)
        cos_delta = cos(delta)

        x =  cos_delta*d - sin_delta*q
        y =  sin_delta*d + cos_delta*q
    end subroutine park_transform_dq_xy
        
    pure subroutine park_transform_xy_dq(x, y, delta, d, q)
        ! Park transformation from (x,y) to (d,q) reference frame
        real(real64), intent(in) :: x, y, delta
        real(real64), intent(out) :: d, q
        real(real64) :: cos_delta, sin_delta
        
        sin_delta = sin(delta)
        cos_delta = cos(delta)
        
        d =  cos_delta*x + sin_delta*y
        q = -sin_delta*x + cos_delta*y
    end subroutine park_transform_xy_dq
    
! -------------------------------------------------------------------------
! Solve Ax=b for x = [vd, vq, id, iq, psid, psiq]^T
! -------------------------------------------------------------------------
    subroutine machine_solver(x_in, output)
        use iso_fortran_env, only:real64
        ! --- Input variables ---
        ! (delta, omega, e_q, e_d, psi__d, psi__q, Vinfty, theta_inf, vf)
        real(real64), intent(in) :: x_in(9)
        ! --- Output variables ---
        ! (vd, vq, id, iq, psid, psiq)
        real(real64), intent(out) :: output(:) ! Array of assumed shape (6)
        
        ! --- Machine constants ---
        real(real64), parameter :: Ra = 0.0025_real64
        real(real64), parameter :: Xl   = 0.2_real64
        real(real64), parameter :: Xd   = 1.8_real64
        real(real64), parameter :: X_d  = 0.3_real64
        real(real64), parameter :: X__d = 0.25_real64
        real(real64), parameter :: Xq   = 1.7_real64
        real(real64), parameter :: X_q  = 0.55_real64
        real(real64), parameter :: X__q = 0.25_real64
        real(real64), parameter :: Rline = 0 !0.05220049160809673_real64
        real(real64), parameter :: Xline = 0.10021371065042028_real64
        
        ! --- Unpack input variables ---
        real(real64) :: delta, omega, e_d, e_q, psi__d, psi__q, Vinfty, theta_inf, vf
        ! --- Trig values and infinite-bus components ---
        real(real64) :: sin_delta, cos_delta, vx_inf, vy_inf
        ! --- Sauer-Pai gamma values ---
        real(real64) :: gamma_d1, gamma_q1, gamma_d2, gamma_q2
        ! --- Build A matrix and b vector ---
        real(real64) :: A(6,6), b(6), x(6)
        
        ! Sanity check
        if (size(x_in) /= 9) error stop "machine_solver: x_in must have length 9"
        if (size(output) /= 6) error stop "machine_solver: output must have length 6"
        
        ! --- Unpack input variables ---
        delta       = x_in(1)
        !omega       = x_in(2)   ! Not used
        e_d         = x_in(3)
        e_q         = x_in(4)
        psi__d      = x_in(5)
        psi__q      = x_in(6)
        Vinfty      = x_in(7)
        theta_inf   = x_in(8)
        !vf          = x_in(9)   ! Not used
    
        ! --- Trig values and infinite-bus components ---
        sin_delta = sin(delta)
        cos_delta = cos(delta)
        vx_inf = Vinfty * cos(theta_inf)
        vy_inf = Vinfty * sin(theta_inf)
        
        ! --- Sauer-Pai gamma values ---
        gamma_d1 = (X__d - Xl) / (X_d - Xl)
        gamma_q1 = (X__q - Xl) / (X_q - Xl)
        !gamma_d2 = (X_d - X__d) / ((X_d - Xl)**2)     ! Not used
        !gamma_q2 = (X_q - X__q) / ((X_q - Xl)**2)     ! Not used
        
        ! --- Build A matrix and b vector ---
        A = 0.0_real64
        b = 0.0_real64
        
        ! Row 1
        A(1,1) = 1.0_real64
        A(1,3) = Ra
        A(1,6) = 1.0_real64
        ! Row 2
        A(2,2) = 1.0_real64
        A(2,4) = Ra
        A(2,5) = -1.0_real64
        ! Row 3
        A(3,3) = X__d
        A(3,5) = 1.0_real64
        ! Row 4
        A(4,4) = X__q
        A(4,6) = 1.0_real64
        ! Row 5
        A(5,1) = cos_delta
        A(5,2) = -sin_delta
        A(5,3) = Xline*sin_delta - Rline*cos_delta
        A(5,4) = Xline*cos_delta + Rline*sin_delta
        ! Row 6
        A(6,1) =  sin_delta
        A(6,2) =  cos_delta
        A(6,3) =  -Xline*cos_delta - Rline*sin_delta
        A(6,4) =  Xline*sin_delta - Rline*cos_delta
        
        ! b vector (indices 1,2 remain zero)
        b(3) =  gamma_d1 * e_q + (1.0_real64 - gamma_d1) * psi__d
        b(4) = -gamma_q1 * e_d + (1.0_real64 - gamma_q1) * psi__q
        b(5) = vx_inf
        b(6) = vy_inf
        
        ! --- solve the 6x6 system ---
        call solve_6x6_lapack(A, b, x)   ! x = [vd, vq, id, iq, psid, psiq]
        
        ! --- map to outputs ---
        output = x 
        
    end subroutine machine_solver
    
    
    subroutine machine_solver_red(x_in, output)
        use iso_fortran_env, only:real64
        ! --- Input variables ---
        ! (delta, omega, e_q, e_d, Vinfty, theta_inf, vf)
        real(real64), intent(in) :: x_in(7)
        ! --- Output variables ---
        real(real64), intent(out) :: output(:) ! Array of assumed shape (6)
        
        ! --- Machine constants ---
        real(real64), parameter :: Ra = 0.0025_real64
        !real(real64), parameter :: Xl   = 0.2_real64
        real(real64), parameter :: Xd   = 1.8_real64
        real(real64), parameter :: X_d  = 0.3_real64
        !real(real64), parameter :: X__d = 0.25_real64
        real(real64), parameter :: Xq   = 1.7_real64
        real(real64), parameter :: X_q  = 0.55_real64
        !real(real64), parameter :: X__q = 0.25_real64
        real(real64), parameter :: Rline = 0 !0.05220049160809673_real64
        real(real64), parameter :: Xline = 0.10021371065042028_real64
        
        ! --- Unpack input variables ---
        real(real64) :: delta, omega, e_d, e_q, Vinfty, theta_inf, vf
        ! --- Trig values and infinite-bus components ---
        real(real64) :: sin_delta, cos_delta, vx_inf, vy_inf
        ! --- Sauer-Pai gamma values ---
        real(real64) :: gamma_d1, gamma_q1, gamma_d2, gamma_q2
        ! --- Build A matrix and b vector ---
        real(real64) :: A(6,6), b(6), x(6)
        
        ! Sanity check
        if (size(x_in) /=7) error stop "machine_solver_red: x_in must have length 7"
        if (size(output) /= 6) error stop "machine_solver_red: output must have length 6"
        
        ! --- Unpack input variables ---
        delta       = x_in(1)
        !omega       = x_in(2)   ! Not used
        e_d         = x_in(3)
        e_q         = x_in(4)
        Vinfty      = x_in(5)
        theta_inf   = x_in(6)
        !vf          = x_in(7)   ! Not used
    
        ! --- Trig values and infinite-bus components ---
        sin_delta = sin(delta)
        cos_delta = cos(delta)
        vx_inf = Vinfty * cos(theta_inf)
        vy_inf = Vinfty * sin(theta_inf)
        
        ! --- Build A matrix and b vector ---
        A = 0.0_real64
        b = 0.0_real64
        
        ! Row 1
        A(1,1) = 1.0_real64
        A(1,3) = Ra
        A(1,6) = 1.0_real64
        ! Row 2
        A(2,2) = 1.0_real64
        A(2,4) = Ra
        A(2,5) = -1.0_real64
        ! Row 3
        A(3,2) = 1.0_real64
        A(3,3) = X_d
        A(3,4) = Ra 
        ! Row 4
        A(4,1) = 1.0_real64
        A(4,3) = Ra 
        A(4,4) = -X_q
        ! Row 5
        A(5,1) = cos_delta
        A(5,2) = -sin_delta
        A(5,3) = Xline*sin_delta - Rline*cos_delta
        A(5,4) = Xline*cos_delta + Rline*sin_delta
        ! Row 6
        A(6,1) =  sin_delta
        A(6,2) =  cos_delta
        A(6,3) =  -Xline*cos_delta - Rline*sin_delta
        A(6,4) =  Xline*sin_delta - Rline*cos_delta
        
        ! b vector (indices 1,2 remain zero)
        b(3) = e_q
        b(4) = e_d
        b(5) = vx_inf
        b(6) = vy_inf
        
        ! --- solve the 6x6 system ---
        call solve_6x6_lapack(A, b, x)   ! x = [vd, vq, id, iq, psid, psiq]
        
        ! --- map to outputs ---
        output = x 
        
    end subroutine machine_solver_red
    
    
! Subroutine to solve 6x6 linear system Ax=b using LAPACK
    subroutine solve_6x6_lapack(A, b, x)
        use iso_fortran_env, only : real64
        implicit none
        ! Inputs/outputs
        real(real64), intent(in)  :: A(6,6), b(6)
        real(real64), intent(out) :: x(6)

        ! Locals
        real(real64) :: lu(6,6)
        real(real64) :: rhs(6,1)        ! 2-D to match LAPACK B
        integer      :: ipiv(6)
        integer      :: info
        integer      :: n, lda, ldb, nrhs
        character(len=1) :: trans

        !---- all specifications (incl. interface) must be before any executable code
        interface
            subroutine dgetrf(m, n, a, lda, ipiv, info)
                import :: real64
                integer, intent(in)    :: m, n, lda
                real(real64), intent(inout) :: a(lda, *)
                integer, intent(out)   :: ipiv(*)
                integer, intent(out)   :: info
            end subroutine dgetrf

            subroutine dgetrs(trans, n, nrhs, a, lda, ipiv, b, ldb, info)
                import :: real64
                character(len=1), intent(in) :: trans
                integer, intent(in)          :: n, nrhs, lda, ldb
                real(real64), intent(inout)  :: a(lda, *)
                integer, intent(in)          :: ipiv(*)
                real(real64), intent(inout)  :: b(ldb, *)
                integer, intent(out)         :: info
            end subroutine dgetrs
        end interface
        !---- end of specification part

        ! Problem dimensions/constants
        n     = 6
        lda   = 6
        ldb   = 6
        nrhs  = 1
        trans = 'N'

        ! Work on local copies
        lu       = A
        rhs(:,1) = b

        call dgetrf(n, n, lu, lda, ipiv, info)
        if (info /= 0) then
            x = huge(1.0_real64)
            return
        end if

        call dgetrs(trans, n, nrhs, lu, lda, ipiv, rhs, ldb, info)
        if (info /= 0) then
            x = huge(1.0_real64)
            return
        end if

        x = rhs(:,1)
    end subroutine solve_6x6_lapack
    
! Infinite bus: KVL
! Subroutine to compute v_infty and v_infty_ang given vx,vy,Xline
    subroutine inf_bus_equations(vx, vy, ix, iy, Xline, Rline, v_infty, v_infty_ang)
        use iso_fortran_env, only:real64
        ! --- Input variables ---
        real(real64), intent(in) :: vx, vy, ix, iy, Xline, Rline
        real(real64), intent(out) :: v_infty, v_infty_ang
        complex(real64) :: v_t, i_t, v_infty_cplx, Z_line
        
        ! Assign complex voltage and current
        v_t = CMPLX(vx, vy, kind=real64)        ! Terminal voltage
        i_t = CMPLX(ix, iy, kind=real64)        ! Terminal current
        Z_line = CMPLX(Rline, Xline, kind=real64)
        
        ! line voltage drop
        v_infty_cplx = v_t - Z_line * i_t
        
        ! Map to outputs
        v_infty     = ABS(v_infty_cplx)
        v_infty_ang = ATAN2(AIMAG(v_infty_cplx), REAL(v_infty_cplx, kind=real64))
        
    end subroutine inf_bus_equations

    
! Subroutine to assign values to the input of the neural network
    subroutine assign_old_values_to_nn_input(pinn_input, previous_timstep_vbls)
        use iso_fortran_env, only:real64
        implicit none
        real(real64), intent(inout) :: pinn_input(1,10)
        real(real64), intent(in)    :: previous_timstep_vbls(1,10)
        
        ! Assign the values to be kept from previous timestep
        ! delta(2), omega(3), e_d(4), e_q(5), psi__d(6), psi__q(7), Vinfty(8), Vinftyang(9), vf(10)
        pinn_input(1,2:10) = previous_timstep_vbls(1,2:10)
        
    end subroutine assign_old_values_to_nn_input
    
    subroutine assign_old_values_to_nn_input_red(pinn_input, previous_timstep_vbls)
        use iso_fortran_env, only:real64
        implicit none
        real(real64), intent(inout) :: pinn_input(1,8)
        real(real64), intent(in)    :: previous_timstep_vbls(1,8)
        
        ! Assign the values to be kept from previous timestep
        ! delta(2), omega(3), e_d(4), e_q(5), Vinfty(8), Vinftyang(9), vf(10)
        pinn_input(1,2:8) = previous_timstep_vbls(1,2:8)
        
    end subroutine assign_old_values_to_nn_input_red
    
    
    end module aux_functions