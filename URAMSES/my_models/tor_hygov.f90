!  MODEL NAME : tor_hygov               
!  MODEL DESCRIPTION FILE : tor_hygov.txt
!  Data :
!       prm(  1)=  R
!       prm(  2)=  r
!       prm(  3)=  Tr
!       prm(  4)=  Tf
!       prm(  5)=  Tg
!       prm(  6)=  VELM
!       prm(  7)=  Gmax
!       prm(  8)=  Gmin
!       prm(  9)=  Tw
!       prm( 10)=  At
!       prm( 11)=  Dturb
!       prm( 12)=  Qnl
!  Parameters :
!       prm( 13)=  Po   power setpoint
!  Output states :
!       x(  1)=  tm           mechanical torque
!  Internal states defined by user :
!       x(  2)=  Q                      water flow
!       x(  3)=  dH                     deviation of head from 1.
!       x(  4)=  g                      gate opening
!       x(  5)=  c                      desired gate opening
!       x(  6)=  x5                     output of PI controller
!       x(  7)=  x4                     output of integrator of PI controller
!       x(  8)=  x3                     output of rate limiter = input of integrator of PI controller
!       x(  9)=  x2                     input of rate limiter of PI controller
!       x( 10)=  e                      output of Tf time constant block
!       x( 11)=  x1                     input of Tf time constant block
!       x( 12)=  Pm                     mechanical power

!.........................................................................................................

subroutine tor_hygov(nb,name,mode,nbxvar,nbzvar,nbdata,nbaddpar,prm,parname,nbobs, &
   obsname,adtm,eqtyp,tc,t,p,tm,omega,x,z,f,obs)

   use MODELING
   use SETTINGS, only : blocktol1
   use FUNCTIONS_IN_MODELS

   implicit none
   double precision, intent(in):: t,p,tm,omega
   double precision, intent(out):: f(*)
   double precision :: obs(*)
   double precision, intent(inout):: x(*),prm(*),tc(*)
   integer, intent(in):: nb,mode
   integer, intent(inout):: nbxvar,nbzvar,nbdata,nbaddpar,adtm,nbobs,eqtyp(*),z(*)
   character(len=20), intent(in):: name
   character(len=10) :: parname(*),obsname(*)

   select case (mode)
   case (define_var_and_par)
      nbdata= 12
      nbaddpar=  1
      parname(  1)='R'
      parname(  2)='r'
      parname(  3)='Tr'
      parname(  4)='Tf'
      parname(  5)='Tg'
      parname(  6)='VELM'
      parname(  7)='Gmax'
      parname(  8)='Gmin'
      parname(  9)='Tw'
      parname( 10)='At'
      parname( 11)='Dturb'
      parname( 12)='Qnl'
      parname( 13)='Po'
      adtm=  1
      nbxvar= 12
      nbzvar=  3

!........................................................................................
   case (define_obs)
      nbobs=  4
      obsname(  1)='Pm'
      obsname(  2)='Q'
      obsname(  3)='dH'
      obsname(  4)='g'

!........................................................................................
   case (evaluate_obs)
      obs(  1)=x( 12)              
      obs(  2)=x(  2)              
      obs(  3)=x(  3)              
      obs(  4)=x(  4)              

!........................................................................................
   case (initialize)

!Po = ([p]/{At})+{Qnl}
      prm( 13)= (p/prm( 10))+prm( 12)

!Q =  {Po}
      x(  2)= prm( 13)

!dH =  0.
      x(  3)= 0.

!g =  {Po}
      x(  4)= prm( 13)

!c =  {Po}
      x(  5)= prm( 13)

!x5 =  {Po}
      x(  6)= prm( 13)

!x4 =  {Po}
      x(  7)= prm( 13)

!x3 =  0.
      x(  8)= 0.

!x2 =  0.
      x(  9)= 0.

!e =  0.
      x( 10)= 0.

!x1 =  0.
      x( 11)= 0.

!Pm =  [p]
      x( 12)= p

!& algeq    ! input of Tf time constant block
      eqtyp(  1)=0

!& tf1p     ! Tf time constant
      eqtyp(  2)= 10
      tc(  2)=prm(  4)

!& algeq    ! input of rate limiter
      eqtyp(  3)=0

!& lim      ! rate limiter
      eqtyp(  4)=0
      if(x(  9)> prm(  6))then
         z(  1)=1
      elseif(x(  9)<(-prm(  6)))then
         z(  1)=-1
      else
         z(  1)=0
      endif

!& inlim    ! integrator of PI controller
      if (1.>= 0.005)then
         tc(  5)=1.
      endif
      if (x(  7)>prm(  7))then
         z(  2)=1
         eqtyp(  5)=0
      elseif (x(  7)<prm(  8)) then
         z(  2)=-1
         eqtyp(  5)=0
      else
         z(  2)=0
         if (1.>= 0.005)then
            eqtyp(  5)=  7
         else
            eqtyp(  5)=0
         endif
      endif

!& algeq    ! output of PI controller
      eqtyp(  6)=0

!& lim      ! gate limiter
      eqtyp(  7)=0
      if(x(  6)>prm(  7))then
         z(  3)=1
      elseif(x(  6)<prm(  8))then
         z(  3)=-1
      else
         z(  3)=0
      endif

!& tf1p     ! speed governor : time constant
      eqtyp(  8)=  4
      tc(  8)=prm(  5)

!& algeq                 ! hydro turbine: head as function of water flow and gate opening
      eqtyp(  9)=0

!& int                   ! hydro turbine: water column inertia
      if (prm(  9)< 0.005)then
         eqtyp( 10)=0
      else
         eqtyp( 10)=  2
         tc( 10)=prm(  9)
      endif

!& algeq                 ! hydro turbine: mechanical torque as function of head, water flow and speed
      eqtyp( 11)=0

!& algeq
      eqtyp( 12)=0

!........................................................................................
   case (evaluate_eqs)

!& algeq    ! input of Tf time constant block
      f(  1)=1.-omega-prm(  1)*(x(  5)-prm( 13)) - x( 11)

!& tf1p     ! Tf time constant
      f(  2)=(-x( 10)+1.*x( 11))

!& algeq    ! input of rate limiter
      f(  3)=x( 10)/(prm(  2)*prm(  3)) - x(  9)

!& lim      ! rate limiter
      select case (z(  1))
         case(0)
            f(  4)=x(  8)-x(  9)
         case(-1)
            f(  4)=x(  8)-(-prm(  6))
         case(1)
            f(  4)=x(  8)- prm(  6)
      end select

!& inlim    ! integrator of PI controller
      if (1.>= 0.005)then
         select case (z(  2))
            case(0)
               f(  5)=x(  8)
            case(1)
               f(  5)=x(  7)-prm(  7)
            case(-1)
               f(  5)=x(  7)-prm(  8)
         end select
      else
         select case (z(  2))
            case(0)
               f(  5)=x(  8)-x(  7)
            case(1)
               f(  5)=x(  7)-prm(  7)
            case(-1)
               f(  5)=x(  7)-prm(  8)
         end select
      endif

!& algeq    ! output of PI controller
      f(  6)=x(  7)+(x( 10)/prm(  2)) - x(  6)

!& lim      ! gate limiter
      select case (z(  3))
         case(0)
            f(  7)=x(  5)-x(  6)
         case(-1)
            f(  7)=x(  5)-prm(  8)
         case(1)
            f(  7)=x(  5)-prm(  7)
      end select

!& tf1p     ! speed governor : time constant
      f(  8)=(-x(  4)+1.*x(  5))

!& algeq                 ! hydro turbine: head as function of water flow and gate opening
      f(  9)=1. -(x(  2)/x(  4))**2 -x(  3)

!& int                   ! hydro turbine: water column inertia
      if (prm(  9)< 0.005)then
         f( 10)=x(  3)-x(  2)
      else
         f( 10)=x(  3)
      endif

!& algeq                 ! hydro turbine: mechanical torque as function of head, water flow and speed
      f( 11)=prm( 10)*(1.-x(  3))*(x(  2)-prm( 12))+prm( 11)*(1.-omega)*x(  4)  - x(  1)*omega

!& algeq
      f( 12)=x(  1)*omega - x( 12)

!........................................................................................
   case (update_disc)

!& algeq    ! input of Tf time constant block

!& tf1p     ! Tf time constant

!& algeq    ! input of rate limiter

!& lim      ! rate limiter
      select case (z(  1))
         case(0)
            if(x(  9)> prm(  6))then
               z(  1)=1
            elseif(x(  9)<(-prm(  6)))then
               z(  1)=-1
            endif
         case(-1)
            if(x(  9)>(-prm(  6)))then
               z(  1)=0
            endif
         case(1)
            if(x(  9)< prm(  6))then
               z(  1)=0
            endif
      end select

!& inlim    ! integrator of PI controller
      if (1.>= 0.005)then
         select case (z(  2))
            case(0)
               if(x(  7)<prm(  8))then
                  z(  2)=-1
                  eqtyp(  5)=0
               elseif(x(  7)>prm(  7))then
                  z(  2)= 1
                  eqtyp(  5)=0
               endif
            case(1)
               if(x(  8)<0.)then
                  z(  2)=0
                  eqtyp(  5)=  7
               endif
            case(-1)
               if(x(  8)>0.)then
                  z(  2)=0
                  eqtyp(  5)=  7
               endif
         end select
      else
         select case (z(  2))
            case(0)
               if(x(  7)<prm(  8))then
                  z(  2)=-1
               elseif(x(  7)>prm(  7))then
                  z(  2)= 1
               endif
            case(1)
               if(x(  8)<prm(  7))then
                  z(  2)=0
               endif
            case(-1)
               if(x(  8)>prm(  8))then
                  z(  2)=0
               endif
         end select
      endif

!& algeq    ! output of PI controller

!& lim      ! gate limiter
      select case (z(  3))
         case(0)
            if(x(  6)>prm(  7))then
               z(  3)=1
            elseif(x(  6)<prm(  8))then
               z(  3)=-1
            endif
         case(-1)
            if(x(  6)>prm(  8))then
               z(  3)=0
            endif
         case(1)
            if(x(  6)<prm(  7))then
               z(  3)=0
            endif
      end select

!& tf1p     ! speed governor : time constant

!& algeq                 ! hydro turbine: head as function of water flow and gate opening

!& int                   ! hydro turbine: water column inertia

!& algeq                 ! hydro turbine: mechanical torque as function of head, water flow and speed

!& algeq
   end select

end subroutine tor_hygov
