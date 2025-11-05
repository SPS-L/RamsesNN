!> @file
!> @brief thermal_generic1 torque controller

!> @brief define thermal_generic1 torque controller
!> @details .
subroutine def_eq_tor_thermal_generic1(nbxvar,nbzvar,nbdata,nbaddpar,adtm,parname)

   integer, intent(out):: nbxvar,nbzvar,nbdata,nbaddpar,adtm
   character(len=10), intent(out):: parname(*)

   nbxvar=10
   nbzvar=2
   nbdata=12
   nbaddpar=2
   adtm=10
   parname(4)='zdotmin'
   parname(13)='P0'
   parname(14)='ivo'

end subroutine def_eq_tor_thermal_generic1
!-------------------------------------------------------------
!> @brief define thermal_generic1 torque controller observables
!> @details .
subroutine def_obs_tor_thermal_generic1(nbobs,obsname)

   integer, intent(out):: nbobs
   character(len=10), intent(out):: obsname(*)

   nbobs=5
   obsname(1)='z'
   obsname(2)='PmHP'
   obsname(3)='PmMP'
   obsname(4)='PmLP'
   obsname(5)='Pm'

end subroutine def_obs_tor_thermal_generic1
!-------------------------------------------------------------
!> @brief initialize thermal_generic1 torque controller
!> @details .
subroutine ini_stat_tor_thermal_generic1(name,pelec0,tm0,prm,eqtyp,x,z)

   implicit none

   double precision, intent(in):: pelec0, tm0
   double precision, intent(out):: x(*)
   double precision, intent(inout):: prm(*)
   character(len=20), intent(in):: name
   integer, intent(out):: eqtyp(*),z(*)
   
   double precision :: TOL
   TOL = 1.e-6

   associate(sigma => prm(1), Tmes => prm(2), Tsm => prm(3), zdotmin => prm(4), &
         zdotmax => prm(5), zmin => prm(6), zmax => prm(7), Thp => prm(8), Fhp => prm(9), &
         Tr => prm(10), Fmp => prm(11), Tlp => prm(12), P0 => prm(13), ivo => prm(14))

      x(10)=tm0
      x(9)=tm0
      x(8)=tm0
      x(7)=tm0
      x(6)=tm0
      x(5)=tm0
      x(4)=0.
      x(3)=0.
      x(2)=0.
      x(1)=0.
      P0=tm0
      ivo=1.

      if(Tmes < TOL)then
         eqtyp(1)=0
      else
         eqtyp(1)=1
      endif
      eqtyp(2)=0
      eqtyp(3)=0
      eqtyp(4)=0
      eqtyp(5)=5
      if(Thp < TOL)then
         eqtyp(6)=0
      else
         eqtyp(6)=6
      endif
      if(Tr < TOL)then
         eqtyp(7)=0
      else
         eqtyp(7)=7
      endif
      if(Tlp < TOL)then
         eqtyp(8)=0
      else
         eqtyp(8)=8
      endif
      eqtyp(9)=0
      eqtyp(10)=0

      z(1)=0
      z(2)=0

   end associate

end subroutine ini_stat_tor_thermal_generic1
!-------------------------------------------------------------
!> @brief evaluate thermal_generic1 torque controller missmatch vector
!> @details .
subroutine eval_f_tor_thermal_generic1(name,t,p,omega,prm,x,z,f)

   implicit none

   double precision, intent(in):: t,p,omega,prm(*),x(*)
   integer, intent(in):: z(*)
   double precision, intent(out):: f(*)
   character(len=20), intent(in):: name
   
   double precision :: TOL
   TOL = 1.e-6

   associate(sigma => prm(1), Tmes => prm(2), Tsm => prm(3), zdotmin => prm(4), &
         zdotmax => prm(5), zmin => prm(6), zmax => prm(7), Thp => prm(8), Fhp => prm(9), &
         Tr => prm(10), Fmp => prm(11), Tlp => prm(12), P0 => prm(13), ivo => prm(14))

      if(Tmes < TOL)then
         f(1)=-x(1)+(omega-1.)/sigma
      else
         f(1)=(-x(1)+(omega-1.)/sigma)/Tmes
      endif
      f(2)=P0-x(1)-x(5)-x(2)
      f(3)=x(3)-x(2)/Tsm
      select case (z(1))
         case (0)
            f(4)=x(4)-x(3)
         case (-1)
            f(4)=x(4)-zdotmin
         case (1)
            f(4)=x(4)-zdotmax
      end select
      select case (z(2))
         case (0)
            f(5)=x(4)
         case (-1)
            f(5)=x(5)-zmin
         case (1)
            f(5)=x(5)-zmax
      end select
      if(Thp < TOL)then
         f(6)=x(6)-x(5)
      else
         f(6)=(-x(6)+x(5))/Thp
      endif
      if(Tr < TOL)then
         f(7)=x(7)-x(6)
      else
         f(7)=(-x(7)+x(6))/Tr
      endif
      if(Tlp < TOL)then
         f(8)=x(8)-x(7)*ivo
      else
         f(8)=(-x(8)+x(7)*ivo)/Tlp
      endif
      f(9)=x(9)-fhp*x(6)-fmp*ivo*x(7)-(1.-fhp-fmp)*x(8)
      f(10)=x(9)-omega*x(10)

   end associate

end subroutine eval_f_tor_thermal_generic1
!-------------------------------------------------------------
!> @brief update thermal_generic1 torque controller discrete variables
!> @details .
subroutine upd_z_tor_thermal_generic1(name,t,p,omega,prm,x,z,eqtyp)

   implicit none

   double precision, intent(in):: t,p,omega,prm(*),x(*)
   integer, intent(inout):: z(*),eqtyp(*)
   character(len=20), intent(in):: name

   associate(sigma => prm(1), Tmes => prm(2), Tsm => prm(3), zdotmin => prm(4), &
         zdotmax => prm(5), zmin => prm(6), zmax => prm(7), Thp => prm(8), Fhp => prm(9), &
         Tr => prm(10), Fmp => prm(11), Tlp => prm(12), P0 => prm(13), ivo => prm(14))

      select case (z(1))
         case (0)
            if(x(3) > zdotmax)then
               z(1)=1
            elseif(x(3) < zdotmin)then
               z(1)=-1
            endif
         case (-1)
            if(x(3) > zdotmin .and. x(3) < zdotmax)then
               z(1)=0
            elseif(x(3) > zdotmax)then
               z(1)=1
            endif
         case (1)
            if(x(3) < zdotmax .and. x(3) > zdotmin)then
               z(1)=0
            elseif(x(3) < zdotmin)then
               z(1)=-1
            endif
      end select

      select case (z(2))
         case (0)
            if(x(5) > zmax)then
               z(2)=1
               eqtyp(5)=0
            elseif(x(5) < zmin)then
               z(2)=-1
               eqtyp(5)=0
            endif
         case (-1)
            if(x(4) > 0)then
               z(2)=0
               eqtyp(5)=5
            endif
         case (1)
            if(x(4) < 0)then
               z(2)=0
               eqtyp(5)=5
            endif
      end select

   end associate

end subroutine upd_z_tor_thermal_generic1
!-------------------------------------------------------------
!> @brief export thermal_generic1 torque controller observable values
!> @details .
subroutine eval_obs_tor_thermal_generic1(name,t,p,omega,prm,x,z,obs)

   implicit none

   integer, intent(in):: z(*)
   double precision, intent(in):: t,p,omega,prm(*),x(*)
   double precision, intent(out):: obs(*)
   character(len=20), intent(in):: name
   
   associate(sigma => prm(1), Tmes => prm(2), Tsm => prm(3), zdotmin => prm(4), &
      zdotmax => prm(5), zmin => prm(6), zmax => prm(7), Thp => prm(8), Fhp => prm(9), &
      Tr => prm(10), Fmp => prm(11), Tlp => prm(12), P0 => prm(13), ivo => prm(14))

   obs(1)=x(5)
   obs(2)=fhp*x(6)
   obs(3)=fmp*ivo*x(7)
   obs(4)=(1.-fhp-fmp)*x(8)
   obs(5)=x(9)
   
   end associate

end subroutine eval_obs_tor_thermal_generic1
