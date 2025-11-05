!> @file
!> @brief associates the name of the torque with the actual subroutine

!> @brief associates the name of the torque with the actual subroutine
!> @details .
subroutine assoc_torque_ptr(modelname,tor_ptr)

   use MODELING

   implicit none

   character(len=20), intent(in):: modelname
   procedure(torque), pointer, intent(out) :: tor_ptr
!   external tor_TGOV1D
!   external tor_hygov
!   external tor_thermal_generic1

   select case (modelname)

!      case('THERMAL_GENERIC1')
!         tor_ptr => tor_thermal_generic1
!      case('TGOV1D')
!         tor_ptr => tor_TGOV1D
!      case('Hydro')
!          tor_ptr=> tor_hygov
         
   end select

end subroutine assoc_torque_ptr
