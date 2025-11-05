!===============================================================
! Synchronous Machine steady-state initialization using
! Intel MKL Trust-Region Nonlinear Least Squares (TRNLSP).
!
! - Solves for x = [delta, t_m, vf, psi_q, psi_d, e_q, e_d, psi__d, psi__q]
!   by minimizing ||residual(x)||_2 with m=n=9 equations.
! - Uses MKL RCI routines: dtrnlsp_init / dtrnlsp_solve / dtrnlsp_get / dtrnlsp_delete
!   and djacobi (black-box central differences) for the Jacobian.
!   Docs: ?trnlsp_init, ?trnlsp_solve, ?trnlsp_get, ?jacobi.  (See sources.)
!===============================================================

module sm_init_mkl
  use, intrinsic :: iso_fortran_env, only: real64, int64
  use mkl_rci                  ! MKL RCI interfaces & status constants (TR_SUCCESS, etc.)
  !use mkl_rci_type 
  implicit none
  private

  !-------------------------
  ! Public API
  !-------------------------
  public :: init_sauer_pai_from_pf_mkl

  !-------------------------
  ! Power-flow terminal voltage (set from PF results)
  ! You can change the interface to pass these in if you prefer.
  !-------------------------
  real(real64), parameter :: Vx0 = 1.030000000000d0
  real(real64), parameter :: Vy0 = 0.000000000000d0

  !-------------------------
  ! Synchronous machine parameters (HARD-CODE HERE)
  ! Replace with your machine’s constants (per unit).
  !-------------------------
  real(real64), parameter :: Ra    = 0.0025d0
  real(real64), parameter :: Xd    = 1.800d0
  real(real64), parameter :: Xq    = 1.700d0
  real(real64), parameter :: Xd_p  = 0.300d0
  real(real64), parameter :: Xq_p  = 0.550d0
  real(real64), parameter :: Xd_pp = 0.250d0
  real(real64), parameter :: Xq_pp = 0.250d0
  real(real64), parameter :: Xl    = 0.20d0

  ! Sauer–Pai “gamma” coefficients (edit to match your model)
  real(real64), parameter :: gamma_d1 = (Xd_pp - Xl) / (Xd_p - Xl)
  real(real64), parameter :: gamma_q1 = (Xq_pp - Xl) / (Xq_p - Xl)
  real(real64), parameter :: gamma_d2 = (Xd_p  - Xd_pp) / ((Xd_p - Xl)**2)
  real(real64), parameter :: gamma_q2 = (Xq_p  - Xq_pp) / ((Xq_p - Xl)**2)

  !-------------------------
  ! Module globals used by residual (to avoid user_data plumbing)
  !-------------------------
  real(real64) :: gP, gQ             ! active, reactive power (inputs)
  real(real64) :: gVx, gVy           ! terminal voltage (from PF; here Vx0,Vy0)

contains
  
  pure subroutine xy_to_dq(vx, vy, delta, vd, vq)
        ! Park transformation from (x,y) to (d,q) reference frame
        real(real64), intent(in) :: vx, vy, delta
        real(real64), intent(out) :: vd, vq
        real(real64) :: cos_delta, sin_delta
        sin_delta = sin(delta)
        cos_delta = cos(delta)
        vd =  sin_delta*vx - cos_delta*vy
        vq = cos_delta*vx + sin_delta*vy
  end subroutine xy_to_dq
  
  pure subroutine dq_to_xy(id, iq, delta, ix, iy)   !pure function park_transform_dq_xy(d, q, delta) result(xy)
        ! Inverse Park transformation from (d,q) to (x,y) reference frame
        real(real64), intent(in) :: id, iq, delta
        real(real64), intent(out) :: ix, iy
        real(real64) :: cos_delta, sin_delta
        sin_delta = sin(delta)
        cos_delta = cos(delta)
        ix =  sin_delta*id + cos_delta*iq
        iy =  -cos_delta*id + sin_delta*iq
  end subroutine dq_to_xy

  !-------------------------------------------------------------
  ! Residual function for MKL (m=n=9).
  ! MKL’s djacobi expects: subroutine fcn(m, n, x, f)
  !   x = [delta, t_m, vf, psi_q, psi_d, e_q, e_d, psi__d, psi__q]
  !   f = [r1, Pbal, Qbal, r4, r5, r6, r7, r8, r9]
  !-------------------------------------------------------------
  subroutine residual_sm(m, n, x, f)
    integer,       intent(in)  :: m, n
    real(real64),  intent(in)  :: x(n)
    real(real64),  intent(out) :: f(m)

    real(real64) :: delta, t_m, vf, psiq, psid, e_q, e_d, psi__d, psi__q
    real(real64) :: vd, vq, id_, iq_, t_e
    real(real64) :: Pbal, Qbal, r4, r5, r6, r7, r8, r9

    delta = x(1); t_m = x(2); vf = x(3)
    psiq  = x(4); psid = x(5)
    e_q   = x(6); e_d  = x(7)
    psi__d= x(8); psi__q= x(9)

    call xy_to_dq(gVx, gVy, delta, vd, vq)

    ! (15.15) current relations
    id_ = (1.0d0 / Xd_pp) * ( gamma_d1*e_q - psid + (1.0d0 - gamma_d1)*psi__d )
    iq_ = (1.0d0 / Xq_pp) * ( -gamma_q1*e_d - psiq + (1.0d0 - gamma_q1)*psi__q )

    ! (15.6) electrical torque
    t_e = psid*iq_ - psiq*id_

    ! Power balance (P, Q)
    Pbal = gP - (vd*id_ + vq*iq_)
    Qbal = gQ - (vq*id_ - vd*iq_)

    ! Stator algebraic with ω=1 pu (15.9)
    r4 = Ra*iq_ - 1.0d0*psid + vq
    r5 = Ra*id_ + 1.0d0*psiq + vd

    ! (15.13) transient/subtransient emf algebraics
    r6 = -e_q - (Xd - Xd_p)*( id_ - gamma_d2*psi__d - (1.0d0 - gamma_d1)*id_ + gamma_d2*e_q ) + vf
    r7 = -e_d + (Xq - Xq_p)*( iq_ - gamma_q2*psi__q - (1.0d0 - gamma_q1)*iq_ - gamma_d2*e_d )
    r8 = -psi__d + e_q - (Xd_p - Xl)*id_
    r9 = -psi__q - e_d - (Xq_p - Xl)*iq_

    ! Mechanical torque balance
    f(1) = t_m - t_e

    ! Power + algebraic residuals
    f(2) = Pbal
    f(3) = Qbal
    f(4) = r4
    f(5) = r5
    f(6) = r6
    f(7) = r7
    f(8) = r8
    f(9) = r9
  end subroutine residual_sm

  !--------------------------------------------------------------------
  ! Public entry point.
  !
  ! Inputs:
  !   P, Q     - target active/reactive power (pu)
  !   Xline    - series reactance to infinite bus (pu)
  !
  ! Outputs:
  !   x_init(10) = [delta, 1.0, e_q, e_d, psi__d, psi__q, vf, |V∞|, ∠V∞, Xline]
  !   ix, iy      - steady-state phase currents in xy-frame
  !
  ! Errors:
  !   - Raises error if MKL signals invalid input or failure.
  !   - Raises error if computed P/Q don’t match targets within tolerance.
  !--------------------------------------------------------------------
  subroutine init_sauer_pai_from_pf_mkl(P, Q, Xline, x_init, ix, iy)
    use, intrinsic :: iso_fortran_env, only: error_unit
    implicit none
    real(real64), intent(in)  :: P, Q, Xline
    real(real64), intent(out) :: x_init(10)
    real(real64), intent(out) :: ix, iy

    ! Problem sizes
    integer, parameter :: n = 9, m = 9

    ! MKL TRNLSP handle & status
    !integer(int64) :: handle
    type(HANDLE_TR) :: handle
    integer        :: res, rci, iter, st_cr
    real(real64)   :: r1_init, r2_final

    ! Solver workspace
    real(real64) :: x(n), fvec(m)
    real(real64), allocatable :: fjac(:,:)

    ! Stopping criteria eps(1:6) per ?trnlsp_init documentation.
    real(real64) :: eps(6)
    integer      :: iter1, iter2
    real(real64) :: rs

    ! Jacobian FD step for djacobi
    real(real64) :: jac_eps

    ! Local variables for outputs & checks
    real(real64) :: delta, t_m, vf, psi_q, psi_d, e_q, e_d, psi__d, psi__q
    real(real64) :: vd, vq, id_, iq_, Pcalc, Qcalc, Te
    real(real64) :: Vinf_re, Vinf_im, Vinf_mag, Vinf_ang
    complex(real64) :: V, S, Ipf, Zq, Vplus

    !integer :: i
    integer :: info(6)

    ! Bind PF data to module globals for residual
    gP = P; gQ = Q
    gVx = Vx0; gVy = Vy0

    !---------------------------------------------
    ! Initial guess (mimics your Python logic)
    !---------------------------------------------
    V   = cmplx(gVx, gVy, kind=real64)
    S   = cmplx(P, Q, kind=real64)
    Ipf = conjg(S / V)                       ! Ixy_from_pf = conj(S/V)
    Zq  = cmplx(Ra, Xq, kind=real64)
    Vplus = V + Zq*Ipf                       ! V + (Ra + jXq)*I_pf
    delta = atan2(aimag(Vplus), real(Vplus)) ! load angle
    t_m   = P                                ! w0=1 => Tm0 = P

    call xy_to_dq(gVx, gVy, delta, vd, vq)

    ! x = [delta, t_m, vf, psi_q, psi_d, e_q, e_d, psi__d, psi__q]
    x = 0.0d0
    x(1) = delta
    x(2) = t_m
    x(3) = 1.0d0      ! vf initial guess
    x(4) = vq         ! psi_q
    x(5) = vd         ! psi_d
    x(6) = vq         ! e_q
    x(7) = vd         ! e_d
    x(8) = vq         ! psi__d
    x(9) = vd         ! psi__q

    !---------------------------------------------
    ! MKL TRNLSP configuration
    !---------------------------------------------
    allocate(fjac(m,n))

    eps   = 1.0d-12        ! eps(1:6) all tight; eps(6)=0 => high-precision trial step (per docs)
    eps(6)= 0.0d0
    iter1 = 500            ! max outer iterations
    iter2 = 200            ! max inner (trial-step) iterations
    rs    = 1.0d0          ! initial trust-region radius (0.1 .. 100 per docs)

    jac_eps = 1.0d-8       ! central-diff step for djacobi

    ! Initialize solver (stores pointers to x & eps inside handle; don't move them)
    res = dtrnlsp_init(handle, n, m, x, eps, iter1, iter2, rs)
    if (res /= TR_SUCCESS) then
      write(error_unit,'(a,i0)') 'MKL dtrnlsp_init failed, code=', res
      error stop
    end if

    ! Optional input checking
    fvec = 0.0d0; fjac = 0.0d0
    call residual_sm(m, n, x, fvec)
    res = dtrnlsp_check(handle, n, m, fjac, fvec, eps, info)
    if (res /= TR_SUCCESS) then
      write(error_unit,'(a,i0)') 'MKL dtrnlsp_check failed, code=', res
      error stop
    end if

    !---------------------------------------------
    ! Reverse-communication solve loop
    !   rci = 2 -> supply J(x) into fjac
    !   rci = 1 -> supply f(x) into fvec
    !   rci = 0 -> successful internal step; keep looping
    !  negative rci -> converged/terminated
    !---------------------------------------------
    do
      res = dtrnlsp_solve(handle, fvec, fjac, rci)
      if (res /= TR_SUCCESS) then
        write(error_unit,'(a,i0)') 'MKL dtrnlsp_solve failed, code=', res
        res = dtrnlsp_delete(handle)
        if (res /= TR_SUCCESS) then
          write(error_unit,'(a,i0)') 'MKL dtrnlsp_delete failed, code=', res
        end if
        error stop
      end if

      select case (rci)
      case (2)
        ! Compute Jacobian by central differences (black-box)
        res = djacobi(residual_sm, n, m, fjac, x, jac_eps)
        if (res /= TR_SUCCESS) then
          write(error_unit,'(a,i0)') 'MKL djacobi failed, code=', res
          res = dtrnlsp_delete(handle)
          if (res /= TR_SUCCESS) then
              write(error_unit,'(a,i0)') 'MKL dtrnlsp_delete failed, code=', res
          end if
          error stop
        end if
      case (1)
        call residual_sm(m, n, x, fvec)
      case (0)
        cycle           ! one successful internal step; continue iterations
      case default
        exit            ! negative => met stopping criterion (or limits)
      end select
    end do

    ! Get iteration info (optional, but useful in practice)
    res = dtrnlsp_get(handle, iter, st_cr, r1_init, r2_final)
    res = dtrnlsp_delete(handle)
    if (res /= TR_SUCCESS) then
      write(error_unit,'(a,i0)') 'MKL dtrnlsp_delete failed, code=', res
    end if

    !---------------------------------------------
    ! Unpack solution from x (MKL updated x in-place)
    !---------------------------------------------
    delta  = x(1); t_m   = x(2); vf     = x(3)
    psi_q  = x(4); psi_d = x(5)
    e_q    = x(6); e_d   = x(7)
    psi__d = x(8); psi__q= x(9)

    ! Compute currents, powers, torque (for output + validation)
    call xy_to_dq(gVx, gVy, delta, vd, vq)
    id_ = (1.0d0 / Xd_pp) * ( gamma_d1*e_q - psi_d + (1.0d0 - gamma_d1)*psi__d )
    iq_ = (1.0d0 / Xq_pp) * ( -gamma_q1*e_d - psi_q + (1.0d0 - gamma_q1)*psi__q )
    call dq_to_xy(id_, iq_, delta, ix, iy)

    Pcalc = vd*id_ + vq*iq_
    Qcalc = vq*id_ - vd*iq_
    Te    = psi_d*iq_ - psi_q*id_

    ! Infinite-bus line drop
    Vinf_re =  gVx - (-Xline*iy)     ! Re{V - j Xline * (ix + j iy)} = Vx + Xline*iy
    Vinf_im =  gVy - ( Xline*ix)     ! Im{...} = Vy - Xline*ix
    Vinf_mag = sqrt(Vinf_re*Vinf_re + Vinf_im*Vinf_im)
    Vinf_ang = atan2(Vinf_im, Vinf_re)

    ! Build returned state vector (PINN order in your Python)
    x_init(1)  = delta
    x_init(2)  = 1.0d0      ! omega
    x_init(3)  = e_q
    x_init(4)  = e_d
    x_init(5)  = psi__d
    x_init(6)  = psi__q
    x_init(7)  = vf
    x_init(8)  = Vinf_mag
    x_init(9)  = Vinf_ang
    x_init(10) = Xline

    !---------------------------------------------
    ! Enforce power match (raise error if not met)
    !---------------------------------------------
    if (abs(Pcalc - P) > 1.0d-8 .or. abs(Qcalc - Q) > 1.0d-8) then
      write(error_unit,'(a,1x,es12.4,1x,a,1x,es12.4)') 'Pcalc vs P:', Pcalc, 'target', P
      write(error_unit,'(a,1x,es12.4,1x,a,1x,es12.4)') 'Qcalc vs Q:', Qcalc, 'target', Q
      error stop 'Initialization failed: power mismatch beyond tolerance.'
    end if

  end subroutine init_sauer_pai_from_pf_mkl

end module sm_init_mkl
