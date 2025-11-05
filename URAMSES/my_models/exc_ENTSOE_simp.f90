!  MODEL NAME : exc_ENTSOE_simp         
!  MODEL DESCRIPTION FILE : exc_ENTSOE_simp.txt
!  Data :
!       prm(  1)=  TW1
!       prm(  2)=  TW2
!       prm(  3)=  KS1
!       prm(  4)=  T1
!       prm(  5)=  T2
!       prm(  6)=  T3
!       prm(  7)=  T4
!       prm(  8)=  VSTMIN
!       prm(  9)=  VSTMAX
!       prm( 10)=  TA
!       prm( 11)=  TB
!       prm( 12)=  KE
!       prm( 13)=  TE
!       prm( 14)=  EMIN
!       prm( 15)=  EMAX
!  Parameters :
!       prm( 16)=  Vo  
!  Output states :
!       x(  1)=  vf           field voltage
!  Internal states defined by user :
!       x(  2)=  domega                
!       x(  3)=  pss1                  
!       x(  4)=  pss2                  
!       x(  5)=  pss3                  
!       x(  6)=  pss4                  
!       x(  7)=  dvpss                 
!       x(  8)=  avr1                  
!       x(  9)=  avr2                  

!.........................................................................................................

subroutine exc_ENTSOE_simp(nb,name,mode,nbxvar,nbzvar,nbdata,nbaddpar,prm,parname,nbobs, &
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
      nbdata= 15
      nbaddpar=  1
      parname(  1)='TW1'
      parname(  2)='TW2'
      parname(  3)='KS1'
      parname(  4)='T1'
      parname(  5)='T2'
      parname(  6)='T3'
      parname(  7)='T4'
      parname(  8)='VSTMIN'
      parname(  9)='VSTMAX'
      parname( 10)='TA'
      parname( 11)='TB'
      parname( 12)='KE'
      parname( 13)='TE'
      parname( 14)='EMIN'
      parname( 15)='EMAX'
      parname( 16)='Vo'
      advf=  1
      nbxvar= 14
      nbzvar=  2

!........................................................................................
   case (define_obs)
      nbobs=  3
      obsname(  1)='domega'
      obsname(  2)='dvpss'
      obsname(  3)='vf'

!........................................................................................
   case (evaluate_obs)
      obs(  1)=x(  2)              
      obs(  2)=x(  7)              
      obs(  3)=x(  1)              

!........................................................................................
   case (initialize)

!Vo  = v+(vf/{KE}) &
      !prm( 16)= v+(vf/prm( 12))
       ! Initially, assume vf = Vo in order to start the initialization
       prm( 16)= 1.03d0

!domega =  0.
      x(  2)= 0.

!pss1 =  0.
      x(  3)= 0.

!pss2 =  0.
      x(  4)= 0.

!pss3 =  0.
      x(  5)= 0.

!pss4 =  0.
      x(  6)= 0.

!dvpss =  0.
      x(  7)= 0.

!avr1 =  vf/{KE}
      x(  8)= vf/prm( 12)

!avr2 =  vf/{KE}
      x(  9)= vf/prm( 12)

!& algeq
      eqtyp(  1)=0

!& tfder1p
      x( 10)=x(  2)
      eqtyp(  2)= 10
      tc(  2)=prm(  1)
      eqtyp(  3)=0

!& tfder1p
      x( 11)=x(  3)
      eqtyp(  4)= 11
      tc(  4)=prm(  2)
      eqtyp(  5)=0

!& tf1p1z
      x( 12)=x(  4)
      eqtyp(  6)= 12
      tc(  6)=prm(  5)
      eqtyp(  7)=0

!& tf1p1z
      x( 13)=x(  5)
      eqtyp(  8)= 13
      tc(  8)=prm(  7)
      eqtyp(  9)=0

!& lim
      eqtyp( 10)=0
      if(x(  6)>prm(  9))then
         z(  1)=1
      elseif(x(  6)<prm(  8))then
         z(  1)=-1
      else
         z(  1)=0
      endif

!& algeq
      eqtyp( 11)=0

!& tf1p1z
      x( 14)=x(  8)
      eqtyp( 12)= 14
      tc( 12)=prm( 11)
      eqtyp( 13)=0

!& tf1plim
      if(x(  1)>prm( 15))then
         z(  2)=1
         eqtyp( 14)=0
      elseif(x(  1)<prm( 14))then
         z(  2)=-1
         eqtyp( 14)=0
      else
         z(  2)=0
         eqtyp( 14)=  1
      endif
      tc( 14)=prm( 13)

!........................................................................................
   case (evaluate_eqs)

!& algeq
      f(  1)=omega-1.-x(  2)

!& tfder1p
      f(  2)=-x( 10)+x(  2)
      if (prm(  1)< 0.005)then
         f(  3)=prm(  1)*x(  2)-x(  3)
      else
         f(  3)=prm(  1)*(x(  2)-x( 10))-x(  3)
      endif

!& tfder1p
      f(  4)=-x( 11)+x(  3)
      if (prm(  2)< 0.005)then
         f(  5)=prm(  2)*x(  3)-x(  4)
      else
         f(  5)=prm(  2)*(x(  3)-x( 11))-x(  4)
      endif

!& tf1p1z
      f(  6)=-x( 12)+x(  4)
      if (prm(  5)< 0.005)then
         f(  7)=prm(  3)*x(  4)-x(  5)
      else
         f(  7)=prm(  3)*(prm(  4)*x(  4)+(prm(  5)-prm(  4))*x( 12))-prm(  5)*x(  5)
      endif

!& tf1p1z
      f(  8)=-x( 13)+x(  5)
      if (prm(  7)< 0.005)then
         f(  9)=1.*x(  5)-x(  6)
      else
         f(  9)=1.*(prm(  6)*x(  5)+(prm(  7)-prm(  6))*x( 13))-prm(  7)*x(  6)
      endif

!& lim
      select case (z(  1))
         case(0)
            f( 10)=x(  7)-x(  6)
         case(-1)
            f( 10)=x(  7)-prm(  8)
         case(1)
            f( 10)=x(  7)-prm(  9)
      end select

!& algeq
      f( 11)=x(  8)-x(  7)+v-prm( 16)

!& tf1p1z
      f( 12)=-x( 14)+x(  8)
      if (prm( 11)< 0.005)then
         f( 13)=1.*x(  8)-x(  9)
      else
         f( 13)=1.*(prm( 10)*x(  8)+(prm( 11)-prm( 10))*x( 14))-prm( 11)*x(  9)
      endif

!& tf1plim
      select case (z(  2))
         case(0)
            f( 14)=-x(  1)+prm( 12)*x(  9)
         case(1)
            f( 14)=x(  1)-prm( 15)
         case(-1)
            f( 14)=x(  1)-prm( 14)
      end select

!........................................................................................
   case (update_disc)

!& algeq

!& tfder1p

!& tfder1p

!& tf1p1z

!& tf1p1z

!& lim
      select case (z(  1))
         case(0)
            if(x(  6)>prm(  9))then
               z(  1)=1
            elseif(x(  6)<prm(  8))then
               z(  1)=-1
            endif
         case(-1)
            if(x(  6)>prm(  8))then
               z(  1)=0
            endif
         case(1)
            if(x(  6)<prm(  9))then
               z(  1)=0
            endif
      end select

!& algeq

!& tf1p1z

!& tf1plim
      select case (z(  2))
         case(0)
            if(x(  1)<prm( 14))then
                  z(  2)=-1
                  eqtyp( 14)=0
            elseif(x(  1)>prm( 15))then
                  z(  2)= 1
                  eqtyp( 14)=0
            endif
         case(1)
            if(-x(  1)+prm( 12)*x(  9)<0.)then
                  z(  2)=0
                  eqtyp( 14)=  1
            endif
         case(-1)
            if(-x(  1)+prm( 12)*x(  9)>0.)then
                  z(  2)= 0
                  eqtyp( 14)=  1
            endif
      end select
   end select

end subroutine exc_ENTSOE_simp
