!  MODEL NAME : inj_norton
!  Data :
!       prm(  1)=  Tout   small "output" time constant for driving the currents (recommend: 0.001)
!       prm(  2)=  G0     initial conductance of Norton equivalent
!       prm(  3)=  B0     initial susceptance of Norton equivalent
!       prm(  4)=  InNewton   Boolean to indicate if the Norton equivalent is a Newton model or time-stepping model
!       prm(  5)=  ModelType  indicator of model type (1=full, 2=reduced)
!  Parameters :
!       prm(  6)=  Ixnorton  real component of Norton equivalent current source         ! WAS 5
!       prm(  7)=  Iynorton  imaginary component of Norton equivalent current source    ! WAS 6
!       prm(  8)=  Gnorton   conductance of Norton equivalent                           ! WAS 7
!       prm(  9)=  Bnorton   susceptance of Norton equivalent                           ! WAS 8
!  Output states :
!       x(  1)=  ix       real component of current of Norton equivalent -- Ix=ixn+G*Vx-B*Vy
!       x(  2)=  iy       imaginary component of current of Norton equivalent -- Iy=iyn+B*Vx+G*Vy
!
! INJEC norton inj_name bus_name FP FQ P Q Tout G0 B0 InNewton ModelType ;
!.........................................................................................................
!
!  Author: Sustainable Power Systems Lab (SPSL)
!  Contact: info@sps-lab.org
!  Web: https://sps-lab.org
!  Last modified: 2025-01-21

module inj_norton_mod
    use iso_fortran_env, only: real64, int32
    use MODELING
    use SETTINGS, only: write_msg_and_stop
    use aux_functions, only:park_transform_xy_dq, park_transform_dq_xy, machine_solver, machine_solver_red, inf_bus_equations, assign_old_values_to_nn_input, assign_old_values_to_nn_input_red
    use rosenna      ! Neural network library
    use SimTIME, only: t_h 
    use UNITS, only: out ! For printing in the command line
    implicit none

    ! Define variables that stay in memory for the whole simulation
    ! ------------- Arrays -------------
    !real(real64), dimension(1,10)  :: pinn_input         ! input has 10 features for full model and 8 for reduced model
    !real(real64), dimension(1,9)   :: pinn_output        ! output has 9 features for full model and 7 for reduced model
    real(real64), allocatable :: pinn_input(:,:)    ! (1, n_in)
    real(real64), allocatable :: pinn_output(:,:)   ! (1, n_out)
    real(real64), dimension(1,6)   :: machine_output     ! Output of conversion to i, v

    ! ------------- Scalars -------------
    real(real64) :: timestep            ! Should be 0.01
    real(real64) :: new_timestep        ! = 1 if we enter a new tstep, 0 if we still in same tstep as last call
    real(real64) :: time_at_last_call
    real(real64) :: new_vx, new_vy
    real(real64) :: new_v_infty, new_v_infty_ang
    real(real64) :: Xline, Rline
    real(real64) :: P0, Q0
    real(real64) :: ix0, iy0
    !real(real64) :: x_init(10)
    real(real64) :: old_ix, old_iy
    real(real64) :: scaling_mach_to_system  ! scaling factor from machine base to system base
    integer :: n_nn_input, n_nn_output ! number of inputs and outputs of the NN model
   
    ! Make the subroutine public
    public :: inj_norton

contains

    subroutine inj_norton(nb,name,mode,nbxvar,nbzvar,nbdata,nbaddpar,prm,parname,nbobs, &
        obsname,adix,adiy,eqtyp,eqtyp_tc,t,omega,sbase,bus,vx,vy,ix,iy,x,z,f,obs)

        ! Define variables that are renewed at each call
        implicit none
        double precision, intent(in):: t,vx,vy,omega,sbase,ix,iy
        double precision, intent(out):: f(*)
        double precision :: obs(*)
        double precision, intent(inout):: x(*),prm(*),eqtyp_tc(*)
        integer, intent(in):: nb,mode,bus
        integer, intent(inout):: nbxvar,nbzvar,nbdata,nbaddpar,nbobs,eqtyp(*),z(*),adix,adiy
        character(len=20), intent(in):: name
        character(len=10) :: parname(*),obsname(*)

        double precision :: ixnorton, iynorton, gnorton, bnorton
        double precision :: frequency
      
        ! Name of the NN model that is to be loaded
        character(len=100) :: nn_model_name
        
        timestep = t_h(0) - t_h(-1) 
        write(out,"(a)")trim("HELLOO:")
        !write(out,"(f10.6)")timestep
        
        select case (mode)
        case (define_var_and_par)
            nbdata=  5
            nbaddpar=  4
            parname(  1)='Tout'
            parname(  2)='G0'
            parname(  3)='B0'
            parname(  4)='InNewton'
            parname(  5)='ModelType'
            parname(  6)='Ixnorton'
            parname(  7)='Iynorton'
            parname(  8)='Gnorton'
            parname(  9)='Bnorton'
            adix=  1
            adiy=  2
            nbxvar=  2
            nbzvar=  0

!........................................................................................
        case (define_obs)
            nbobs=  7
            obsname(  1)='P'
            obsname(  2)='Q'
            obsname(  3)='Ixnorton'
            obsname(  4)='Iynorton'
            obsname(  5)='Bnorton'
            obsname(  6)='Gnorton'
            obsname(  7)='Omega'
            

!....................................................................................................................................
        case (evaluate_obs)
            obs(  1)=(x(1)*vx+x(2)*vy)*sbase ! P
            obs(  2)=-(x(2)*vx-x(1)*vy)*sbase ! Q
            obs(  3)=prm(  6)                ! Ixnorton
            obs(  4)=prm(  7)                ! Iynorton
            obs(  5)=prm(  8)                ! Bnorton
            obs(  6)=prm(  9)                ! Gnorton
            obs(  7)=omega
         
            !write(out,"(a)")trim("In evaluate_obs: P, Q, Ixnorton, Iynorton, Bnorton, Gnorton:")
            !write(out,"(f10.6)")obs(1)
            !write(out,"(f10.6)")obs(2)
            !write(out,"(f10.6)")obs(3)
            !write(out,"(f10.6)")obs(4)

!....................................................................................................................................
        case (initialize)
            
            ! define n_nn_input and n_nn_output based on model type
            if (prm(5) < 1.5) then
                ! full model
                n_nn_input = 10
                n_nn_output = 9
            else
                ! reduced model
                n_nn_input = 8
                n_nn_output = 7
            end if
            
            ! Allocate pinn_input and pinn_output based on model type
            if (.not. allocated(pinn_input)) then
                allocate(pinn_input(1,n_nn_input))
            end if
            if (.not. allocated(pinn_output)) then
                allocate(pinn_output(1,n_nn_output))
            end if

            !Gnorton = [G0]
            prm(  8)= prm(  2)

            !Bnorton = [B0]
            prm(  9)= prm(  3)

            !prm(  6)=  Ixnorton  real component of current
            prm(6)=x(1)-prm(8)*vx+prm(9)*vy
            !prm(  7)=  Iynorton  imaginary component of current
            prm(7)=x(2)-prm(9)*vx-prm(8)*vy

            !& tf1p ! small "output" time constant for driving the currents
            eqtyp(  1)=  1
            eqtyp_tc(  1)=prm(  1)

            !& tf1p ! small "output" time constant for driving the currents
            eqtyp(  2)=  2
            eqtyp_tc(  2)=prm(  1)

            ! Calculate initial frequency from omega
            frequency = omega / (2.0d0 * 3.141592653589793d0)

            ! Initialise the timestep tracking variable: first call is not a new timestep, 
            ! since we initialize all values and don't compute new values yet
            new_timestep = 0.0d0
            time_at_last_call = t_h(0)
            
            ! Initialise the PINN_input based on model type
            select case (int(prm(5)))
                case (1)
                    ! full model
                    pinn_input(1,1) = 0.01_real64                   ! fixed timestep
                    pinn_input(1,2) = -0.81854824_real64            ! delta
                    pinn_input(1,3) = omega                         ! omega = 1 
                    pinn_input(1,4) = 0.47720581_real64             ! e_d
                    pinn_input(1,5) = 0.9516112_real64              ! e_q
                    pinn_input(1,6) = 0.88543969_real64             ! psi__d
                    pinn_input(1,7) = -0.62244236_real64            ! psi__q
                    pinn_input(1,8) = 1.0128264407663614_real64     ! Vinfty
                    pinn_input(1,9) = -0.07478514081113424_real64   ! Vinftyang
                    pinn_input(1,10) = 1.94418376_real64            ! vf
                case (2) 
                    ! reduced model
                    pinn_input(1,1) = 0.01_real64                   ! fixed timestep
                    pinn_input(1,2) = -0.81854824_real64            ! delta
                    pinn_input(1,3) = omega                         ! omega = 1 
                    pinn_input(1,4) = 0.47720581_real64             ! e_d
                    pinn_input(1,5) = 0.9516112_real64              ! e_q
                    pinn_input(1,6) = 1.0128264407663614_real64     ! Vinfty
                    pinn_input(1,7) = -0.07478514081113424_real64   ! Vinftyang
                    pinn_input(1,8) = 0.0409614_real64              ! Ef  
            end select
                    
            ! Declare the first pinn_output to be steady-state
            pinn_output(1,1:n_nn_output) = pinn_input(1,2:n_nn_input)
            
            ! Initialise "past" current with steady_state values
            old_ix = x(1)/9 ! 0.755124056094_real64
            old_iy = x(2)/9 ! -0.199618554476_real64
            
            ! Debugging: print power flow results
            !P0 = (x(1)*vx+x(2)*vy) ! 700.0_real64   ! <-- set these two from PF solution
            !Q0 = -(x(2)*vx-x(1)*vy) ! 185.0464_real64  
            
            ! Hard-code system parameters since they are constant for my study
            Xline = 0.10021371065042028_real64
            Rline = 0.0_real64      ! 0.05220049160809673_real64 
            new_vx = vx     ! 1.03_real64
            new_vy = vy     ! 0.0_real64
            
            ! Initialise rosenna: model name based on model type
            select case (int(prm(5)))
                case (1)
                    ! full model
                    nn_model_name = "full_frzd"
                case (2) 
                    ! reduced model
                    nn_model_name = "redv2"
            end select
            call initialize_nnx(nn_model_name)
            
!....................................................................................................................................
        case (evaluate_eqs)

            !inNewton = 1 -> go into Newton iterations
            if (prm(4) > 0.5) then
            
                ! Calculate frequency from omega
                frequency = omega / (2.0d0 * 3.141592653589793d0)
            
                ! If we just entered a new timestep -> save pinn_output from previous
                ! timestep to be the input of the next timestep
                if (t_h(0) /= time_at_last_call) then
                    new_timestep = 1.0_real64 ! new timestep flag
                    time_at_last_call = t_h(0)
                    !write(out, *) trim("WE ARE IN A NEW TIMESTEP!")
                else
                    new_timestep = 0.0_real64 ! new timestep flag
                    !write(out, *) trim("WE ARE STILL IN THE SAME TIMESTEP AS LAST CALL!")
                end if

                if (new_timestep > 0.5) then
                    ! We just entered a new timestep. We copy the states
                    ! delta, omega, e_d, e_q, (psi_d, psi_q,) vf
                    ! from the previous pinn_output to pinn_input
                    ! before pinn_output gets overwritten.
                    ! shape of pinn_input: time, delta, omega, e_d, e_q, (psi__d, psi__q,) Vinfty, theta_inf, vf
                    ! shape of pinn_output: delta, omega, e_d, e_q, (psi__d, psi__q,) Vinfty, theta_inf, vf
                    select case (int(prm(5)))
                        case (1)
                            ! full model
                            pinn_input(1,2:7) = pinn_output(1,1:6)
                            pinn_input(1,10) = pinn_output(1,9)
                        case (2) 
                            ! reduced model
                            pinn_input(1, 2:5) = pinn_output(1,1:4)
                            pinn_input(1, 8) = pinn_output(1,7)
                    end select                     
                    
                end if
            
                ! Update infinite bus voltage with the new (vx,vy,old_ix,old_iy)
                ! Remember tht ix,iy are solely input variables, they are zero now
                call inf_bus_equations(vx, vy, old_ix, old_iy, Xline, Rline, new_v_infty, new_v_infty_ang)
            
                ! Assign this newly computed inf bus voltage to the PINN as input:
                ! shape of pinn_input: time, delta, omega, e_d, e_q, psi__d, psi__q, Vinfty, theta_inf, vf
                select case (int(prm(5)))
                    case (1)
                        ! full model
                        pinn_input(1,8) = new_v_infty
                        pinn_input(1,9) = new_v_infty_ang
                    case (2) 
                        ! reduced model
                        pinn_input(1,6) = new_v_infty
                        pinn_input(1,7) = new_v_infty_ang
                end select 
                
                ! NN forward pass
                call use_model(pinn_input, pinn_output)
                ! Translate PINN output (SM states) to usable states: v_dq, i_dq, psi_dq
                ! machine solver output: (vd, vq, id, iq, psid, psiq)
                select case (int(prm(5)))
                    case (1)
                        ! full model
                        call machine_solver(pinn_output(1,1:9), machine_output(1,1:6))
                    case (2) 
                        ! reduced model
                        call machine_solver_red(pinn_output(1,1:7), machine_output(1,1:6))
                    end select
                    
                !! Flip the sign of the q current because of the different convention in the machine model
                !! (Milano convention vs whatever is used in RAMSES)
                !machine_output(1,4) = -machine_output(1,4)
                
                ! Translate i_dq values to i_xy with delta
                ! park tranform input: (d, q, delta, x, y)
                call park_transform_dq_xy( &
                    & machine_output(1,3), machine_output(1,4), pinn_output(1,1), &
                    & ixnorton, iynorton)
                ! Above values ixnorton and iynorton are in the machine base. 
            
                ! Update the Norton equivalent parameters with new values
                prm(6) = ixnorton*9  ! Ixnorton
                prm(7) = iynorton*9  ! Iynorton
                prm(8) = gnorton   ! Gnorton
                prm(9) = bnorton   ! Bnorton
            
                ! Do not update old_ix and old_iy for next Newton iteration - defies the logic
                ! As ix, iy should not be inputs to the machine, only vx, vy
                !old_ix = ixnorton
                !old_iy = iynorton
            
            endif !(prm(4) > 0.5)

            !& tf1p          ! small "output" time constant for driving the currents
            f(  1)=(-x(  1)+prm(6)+prm(8)*vx-prm(9)*vy)

            !& tf1p          ! small "output" time constant for driving the currents
            f(  2)=(-x(  2)+prm(7)+prm(9)*vx+prm(8)*vy)

!....................................................................................................................................
        case (update_disc)
            !inNewton = 0 - once per timestep: at the end of each timestep
            if (prm(4) < 0.5) then
                ! Calculate frequency from omega
                frequency = omega / (2.0d0 * 3.141592653589793d0)
            
                ! Follow the same logic as before: vx,vy -> ixnorton,iynorton
                ! Update infinite bus voltage with the new (vx,vy,old_ix,old_iy)
                ! Remember tht ix,iy are solely input variables, they are zero now
                call inf_bus_equations(vx, vy, old_ix, old_iy, Xline, Rline, new_v_infty, new_v_infty_ang)
            
                ! Assign this newly computed inf bus voltage to the PINN as input:
                ! shape of pinn_input: time, delta, omega, e_d, e_q, psi__d, psi__q, Vinfty, theta_inf, vf
                select case (int(prm(5)))
                    case (1)
                        ! full model
                        pinn_input(1,8) = new_v_infty
                        pinn_input(1,9) = new_v_infty_ang
                    case (2) 
                        pinn_input(1,6) = new_v_infty
                        pinn_input(1,7) = new_v_infty_ang
                end select 
                
                ! Update timestep
                pinn_input(1,1) = 0.01_real64
            
                ! NN forward pass
                call use_model(pinn_input, pinn_output)
                
                ! Translate PINN output (SM states) to usable states: v_dq, i_dq, psi_dq
                ! machine solver output: (vd, vq, id, iq, psid, psiq)
                select case (int(prm(5)))
                    case (1)
                        ! full model
                        call machine_solver(pinn_output(1,1:9), machine_output(1,1:6))
                    case (2) 
                        ! reduced model
                        call machine_solver_red(pinn_output(1,1:7), machine_output(1,1:6))
                end select
                
                !! Flip the sign of the q current because of the different convention in the machine model
                !! (Milano convention vs whatever is used in RAMSES)
                !!machine_output(1,4) = -machine_output(1,4)    
                    
                    
                ! Translate i_dq values to i_xy with delta
                ! park tranform input: (d, q, delta, x, y)
                call park_transform_dq_xy( &
                    & machine_output(1,3), machine_output(1,4), pinn_output(1,1), &
                    & ixnorton, iynorton)
                ! Above values ixnorton and iynorton are in the machine base.
            
                ! Update the Norton equivalent parameters with values from Python
                prm(6) = ixnorton*9  ! Ixnorton !  0.755124056094*9
                prm(7) = iynorton*9  ! Iynorton ! -0.199618554476*9
                prm(8) = gnorton   ! Gnorton
                prm(9) = bnorton   ! Bnorton
                
                write(out,"(a)")trim("Updated Norton parameters:")
                write(out,"(f10.6)")prm(6)
                write(out,"(f10.6)")prm(7)
                
            endif
         
            ! Now update the currents at the end of each timestep. 
            old_ix = ixnorton
            old_iy = iynorton

      end select !(define_var_and_par)(define_obs)(evaluate_obs)(initialize)(evaluate_eqs)(update_disc)

   end subroutine inj_norton

end module inj_norton_mod
    
    
    
