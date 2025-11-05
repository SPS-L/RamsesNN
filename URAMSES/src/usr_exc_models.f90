subroutine assoc_exciter_ptr(modelname,exc_ptr)

   use MODELING

   implicit none

   character(len=20), intent(in):: modelname
   procedure(exciter), pointer, intent(out) :: exc_ptr
   external exc_ENTSOE_simp
!   external exc_AC1A
!   external exc_ST1A
   external exc_kundur
    

   select case (modelname)

      case('exc_ENTSOE')
          exc_ptr => exc_ENTSOE_simp
!      case('AC1A')
!          exc_ptr => exc_AC1A
!      case('ST1A')
!          exc_ptr => exc_ST1A
      case('exc_kundur')
          exc_ptr => exc_kundur


   end select

end subroutine assoc_exciter_ptr
