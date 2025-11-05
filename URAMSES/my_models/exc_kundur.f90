!  MODEL NAME : exc_kundur
!  MODEL DESCRIPTION FILE : exc_kundur.txt
!  Data :
!       prm(  1)=  TR              ! filter time constant
!       prm(  2)=  KA              ! gain of exciter
!       prm(  3)=  TA              ! time constant associated with zero of Transient Gain Reduction
!       prm(  4)=  TB              ! time constant associated with pole of Transient Gain Reduction
!       prm(  5)=  KSTAB           ! gain of PSS
!       prm(  6)=  TW              ! washout time constant of PSS
!       prm(  7)=  T1              ! time constant associated with zero of first filter in PSS
!       prm(  8)=  T2              ! time constant associated with pole of first filter in PSS
!       prm(  9)=  T3              ! time constant associated with zero of second filter in PSS
!       prm( 10)=  T4              ! time constant associated with pole of second filter in PSS
!  Parameters :
!       prm( 11)=  Vref   voltage setpoint
!  Output states :
!       x(  1)=  vf           field voltage
!  Internal states defined by user :
!       x(  2)=  Vfil
!       x(  3)=  vs
!       x(  4)=  dv
!       x(  5)=  xwash
!       x(  6)=  xleadlag

!.........................................................................................................

subroutine exc_kundur(nb,name,mode,nbxvar,nbzvar,nbdata,nbaddpar,prm,parname,nbobs, &
   obsname,advf,eqtyp,tc,t,v,p,q,omega,if,vf,x,z,f,obs)

   use MODELING
   use SETTINGS, only : blocktol1
   use FUNCTIONS_IN_MODELS

   implicit none
   double precision, intent(in):: t,v,p,q,omega,if,vf
   double precision, intent(out):: f(*)
   double precision :: obs(*)
   double precision, intent(inout):: x(*),prm(*),tc(*)
   integer, intent(in):: nb,mode
   integer, intent(inout):: nbxvar,nbzvar,nbdata,nbaddpar,advf,nbobs,eqtyp(*),z(*)
   character(len=20), intent(in):: name
   character(len=10) :: parname(*),obsname(*)

   select case (mode)
   case (define_var_and_par)
      nbdata= 10
      nbaddpar=  1
      parname(  1)='TR'
      parname(  2)='KA'
      parname(  3)='TA'
      parname(  4)='TB'
      parname(  5)='KSTAB'
      parname(  6)='TW'
      parname(  7)='T1'
      parname(  8)='T2'
      parname(  9)='T3'
      parname( 10)='T4'
      parname( 11)='Vref'
      advf=  1
      nbxvar= 10
      nbzvar=  0

!........................................................................................
   case (define_obs)
      nbobs=  3
      obsname(  1)='Vref'
      obsname(  2)='vs'
      obsname(  3)='vf'

!........................................................................................
   case (evaluate_obs)
      obs(  1)=prm( 11)
      obs(  2)=x(  3)
      obs(  3)=x(  1)

!........................................................................................
   case (initialize)

!Vref=[v]+[vf]/{KA}
      prm( 11)=v+vf/prm(  2)

!Vfil = [v]
      x(  2)=v

!vs = 0.
      x(  3)=0.

!dv = {Vref}-[Vfil]+[vs]
      x(  4)=prm( 11)-x(  2)+x(  3)

!xwash = 0.
      x(  5)=0.

!xleadlag = 0.
      x(  6)=0.

!& tf1p         ! voltage measurement time constant
      eqtyp(  1)=  2
      tc(  1)=prm(  1)

!& algeq        ! main summation point
      eqtyp(  2)=0

!& tf1p1z       ! exciter with transient gain reduction
      x(  7)=prm(  2)*(prm(  4)-prm(  3))*x(  4)
      eqtyp(  3)=  7
      tc(  3)= 1.d0
      eqtyp(  4)=0

!& tfder1p      ! PSS : washout
      x(  8)=prm(  5)*omega
      eqtyp(  5)=  8
      tc(  5)=prm(  6)
      eqtyp(  6)=0

!& tf1p1z       ! PSS : first filter
      x(  9)=1.*(prm(  8)-prm(  7))*x(  5)
      eqtyp(  7)=  9
      tc(  7)= 1.d0
      eqtyp(  8)=0

!& tf1p1z       ! PSS : second filter
      x( 10)=1.*(prm( 10)-prm(  9))*x(  6)
      eqtyp(  9)= 10
      tc(  9)= 1.d0
      eqtyp( 10)=0

!........................................................................................
   case (evaluate_eqs)

!& tf1p         ! voltage measurement time constant
      f(  1)=(-x(  2)+1.*v     )

!& algeq        ! main summation point
      f(  2)=prm( 11)-x(  2)+x(  3)-x(  4)

!& tf1p1z       ! exciter with transient gain reduction
      f(  3)=prm(  2)*x(  4)-x(  1)
      f(  4)=prm(  4)*x(  1)-prm(  2)*prm(  3)*x(  4)-x(  7)

!& tfder1p      ! PSS : washout
      f(  5)=x(  5)
      f(  6)=prm(  5)*omega -x(  8)-x(  5)

!& tf1p1z       ! PSS : first filter
      f(  7)=1.*x(  5)-x(  6)
      f(  8)=prm(  8)*x(  6)-1.*prm(  7)*x(  5)-x(  9)

!& tf1p1z       ! PSS : second filter
      f(  9)=1.*x(  6)-x(  3)
      f( 10)=prm( 10)*x(  3)-1.*prm(  9)*x(  6)-x( 10)

!........................................................................................
   case (update_disc)

!& tf1p         ! voltage measurement time constant

!& algeq        ! main summation point

!& tf1p1z       ! exciter with transient gain reduction

!& tfder1p      ! PSS : washout

!& tf1p1z       ! PSS : first filter

!& tf1p1z       ! PSS : second filter
   end select

end subroutine exc_kundur
