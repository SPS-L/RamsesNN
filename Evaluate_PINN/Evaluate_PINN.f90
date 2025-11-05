!  Evaluate_PINN.f90 

    program Evaluate_PINN
        use iso_fortran_env, only:real64
        !use iso_c_binding,  only: c_double
        use aux_functions, only:park_transform_xy_dq, park_transform_dq_xy, machine_solver, inf_bus_equations, assign_old_values_to_nn_input
        !use sm_init_mkl     !only : init_sauer_pai_from_pf_mkl
        use rosenna
        implicit none

        ! Arrays
        real(real64), dimension(1,11) :: pinn_input     ! Example input with 10 features
        real(real64), dimension(1,10)  :: pinn_output   ! Example output with 10 features
        real(real64), dimension(1,6) :: machine_output  ! Output of conversion to i, v
        real(real64), dimension(1,6) :: prevs_tstep_machine_output ! Output of conversion to i, v from previous timestep
        real(real64), dimension(1,11) :: prevs_tstep_pinn_input

        ! ---------- Scalars ----------
        real(real64) :: timestep
        real(real64) :: new_vx, new_vy
        real(real64) :: new_v_infty, new_v_infty_ang
        real(real64) :: Xline
        real(real64) :: P0, Q0
        real(real64) :: ix0, iy0
        real(real64) :: x_init(10)
        real(real64) :: old_ix, old_iy
        
        ! Model name for loading files
        character(len=100) :: model_name
        
        ! PRINTING VARIABLES -- for testing -- useless later
        integer :: iii, n_in_wo_t, n_out, n_pairs_io
        integer :: n_prev, n_new, n_pairs_mach
        real(real64) :: magV, magI
        ! --- Name arrays with explicit lengths that match your PRINT formats
        character(len=12), parameter :: in_names(10) = [ character(len=12) :: &
           'delta', 'omega', 'e_q', 'e_d', 'psi__d', 'psi__q', 'vf', 'vinfty', 'vinftyang', 'Xline' ]
        character(len=8),  parameter :: mach_names(6) = [ character(len=8) :: &
           'vd', 'vq', 'id', 'iq', 'psid', 'psiq' ]
        ! --- Compute table sizes
        n_in_wo_t  = size(pinn_input, 2) - 1     ! drop the timestep column
        n_out      = size(pinn_output, 2)
        n_pairs_io = min(n_in_wo_t, n_out)
        n_prev       = size(prevs_tstep_machine_output, 2)
        n_new        = size(machine_output, 2)
        n_pairs_mach = min(n_prev, n_new)
        ! END PRINTING VARIABLES -- useless later
        
        
        ! Placeholder: old pinn input values for comparison
        ! The values here are the steady-state values, bus should eventually
        ! be the values from the previous timestep using the function
        ! assign_old_values_to_nn_input()
        prevs_tstep_pinn_input(1,1) = 0.01_real64                   ! timestep
        prevs_tstep_pinn_input(1,2) = 0.48707150775487945_real64    ! delta
        prevs_tstep_pinn_input(1,3) = 1.0_real64                    ! omega
        prevs_tstep_pinn_input(1,4) = 1.0706029986474015_real64     ! e_q
        prevs_tstep_pinn_input(1,5) = 0.16777220090116302_real64    ! e_d
        prevs_tstep_pinn_input(1,6) = 1.0176197372434914_real64     ! psi__d
        prevs_tstep_pinn_input(1,7) = -0.36862991347072316_real64   ! psi__q
        prevs_tstep_pinn_input(1,8) = 1.8653519197060522_real64     ! vf
        prevs_tstep_pinn_input(1,9) = 1.00918_real64     ! Vinfty
        prevs_tstep_pinn_input(1,10) = -0.095382_real64  ! Vinftyang
        prevs_tstep_pinn_input(1,11) = 0.12728_real64    ! Xline
        
        
        ! General parameters
        timestep = 0.01_real64 
        old_ix = 0.7551240560949298_real64
        old_iy = -0.1996185544768069_real64
        
        ! Results from Power Flow
        P0 = 700.0_real64/900.0_real64   ! <-- set these two from PF solution
        Q0 = 185.0464_real64/900.0_real64   
        
        ! System parameters
        Xline = 0.12728_real64
        new_vx = 1.03_real64
        new_vy = 0.0_real64
        
        
        ! Call the initializer (raises error if checks fail)
        !!!call init_sauer_pai_from_pf_mkl(P0, Q0, Xline, x_init, ix0, iy0)
        !!! Does not work yet - "need to link mkl properly" ??? 
        
        ! Fill the previous-timestep NN input with values from initializer output
        !!!prevs_tstep_pinn_input(1,1)     = timestep
        !!!prevs_tstep_pinn_input(1,2:11)  = x_init(:)
        ! x_init contains: [ delta, 1.0, e_q, e_d, psi__d, psi__q, vf, Vinfty_mag, Vinfty_ang, Xline ]
        
        ! Also use initialized currents for infinite-bus V computation later
        !old_ix = ix0
        !old_iy = iy0
        
        ! Assign initial values to PINN input array
        pinn_input(1,1) = timestep
        pinn_input(1,11) = Xline
        call assign_old_values_to_nn_input(pinn_input, prevs_tstep_pinn_input)
        
        ! Initialise rosenna
        model_name = "sp_6_pinn"
        call initialize_nnx(model_name)

        ! Compute new infinite bus voltage based on new terminal voltage
        call inf_bus_equations(new_vx, new_vy, old_ix, old_iy, Xline, new_v_infty, new_v_infty_ang)
        print *, "New infinite bus voltage (p.u.):", new_v_infty
        print *, "New infinite bus angle (rad):", new_v_infty_ang
        ! Assign new infinite bus voltage to pinn input
        pinn_input(1,9) = new_v_infty
        pinn_input(1,10) = new_v_infty_ang
        
        ! NN forward pass
        call use_model(pinn_input, pinn_output)
        call machine_solver(pinn_output(1,:), machine_output(1,:) )
        
        ! For testing: convert previous timestep pinn output to i,v
        call machine_solver(prevs_tstep_pinn_input(1,2:11), prevs_tstep_machine_output(1,:) )
        

        
        ! PRINTING - THANKS CHATGPT :)
        ! ---------- Table 1: Neural Network (Inputs vs Outputs) ----------
        print '(//,a)', 'Neural Network: Inputs (no timestep)  vs  Outputs'
        print '(a)',    '-------------------------------------------------------------'
        print '(a)',    '   #   Variable        Input(no t)           Output'
        print '(a)',    '-------------------------------------------------------------'
        do iii = 1, n_pairs_io
           print '(i4,2x,a12,2x,f16.8,3x,f16.8)', iii, trim(in_names(iii)), pinn_input(1, iii+1), pinn_output(1, iii)
        end do
        if (n_in_wo_t /= n_out) then
           print '(a,i0,a,i0,a)', 'Note: input count (no t)=', n_in_wo_t, &
                ', output count=', n_out, ' -> truncated to the shorter length above.'
        end if
        ! ---------- Table 2: Machine (Prev timestep vs New timestep) ----------
        print '(//,a)', 'Machine output: Previous timestep  vs  New timestep'
        print '(a)',    '-------------------------------------------------------------'
        print '(a)',    '   #   Variable        Prev step out         New step out'
        print '(a)',    '-------------------------------------------------------------'
        do iii = 1, n_pairs_mach
           print '(i4,2x,a8,2x,f16.8,3x,f16.8)', iii, trim(mach_names(iii)), prevs_tstep_machine_output(1, iii), machine_output(1, iii)
        end do
        if (n_prev /= n_new) then
           print '(a,i0,a,i0,a)', 'Note: prev step count=', n_prev, ', new step count=', n_new, &
                ' -> truncated to the shorter length above.'
        end if
        
        ! compute magnitudes
        magV = sqrt( machine_output(1,1)**2 + machine_output(1,2)**2)
        magI = sqrt( machine_output(1,3)**2 + machine_output(1,4)**2)
        print '(a,f12.6)', "Voltage magnitude at new step (|V|): ", magV
        print '(a,f12.6)', "Current magnitude at new step (|I|): ", magI
        ! END PRINTING - THANKS CHATGPT :)




    end program Evaluate_PINN

