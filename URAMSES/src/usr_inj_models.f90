!> @file
!> @brief associates the name of the injector with the actual subroutine

!> @brief associates the name of the injector with the actual subroutine
!> @details .
subroutine assoc_inj_ptr(modelname,inj_ptr)

   use MODELING
   use inj_norton_mod, only : inj_norton
   implicit none

   character(len=20), intent(in):: modelname
   procedure(injector), pointer, intent(out) :: inj_ptr
   external inj_vfault
!   external inj_ATL2
!   external inj_ATL2aa
!   external inj_ATL2a
!   external inj_ATL2aT
   external inj_i_cst
   external inj_PQ_inj
   external inj_vfd_load
!   external inj_WT4
!   external inj_BESS
   
   select case (modelname)

        case('PQ')
            inj_ptr=>inj_PQ_inj
        case('vfd_load')
            inj_ptr=>inj_vfd_load
        case('VFAULT')
            inj_ptr=>inj_vfault
        case('i_cst')
            inj_ptr=>inj_i_cst
        case('NORTON')
            inj_ptr=>inj_norton
!      case('ATL2')
!          inj_ptr=>inj_ATL2
!      case('ATL2a')
!          inj_ptr=>inj_ATL2aa
!      case('ATL2b')
!          inj_ptr=>inj_ATL2a
!      case('ATL2c')
!          inj_ptr=>inj_ATL2aT
!      case('WT4')
!          inj_ptr=>inj_WT4
!      case('BESS')
!          inj_ptr=>inj_BESS
          
   end select

end subroutine assoc_inj_ptr
