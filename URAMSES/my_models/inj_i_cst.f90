!  MODEL NAME : inj_i_cst               
!  MODEL DESCRIPTION FILE : inj_2.txt
!  Data :
!       prm(  1)=  iextx		! Current output of the model, given by the external PINN
!       prm(  2)=  iexty		! later enforce equality with ix and iy.
!  Parameters :
!       prm(  3)=  ii  
!  Output states :
!       x(  1)=  ix           real component of current
!       x(  2)=  iy           imaginary component of current
!  Internal states defined by user :
!       x(  3)=  iobsx                 
!       x(  4)=  iobsy                 

!.........................................................................................................

subroutine inj_i_cst(nb,name,mode,nbxvar,nbzvar,nbdata,nbaddpar,prm,parname,nbobs, &
   obsname,adix,adiy,eqtyp,tc,t,omega,sbase,bus,vx,vy,ix,iy,x,z,f,obs)

   use MODELING
   use FREQUENCY
   use ISLAND, only : isl
   use SETTINGS, only : blocktol1,omega_ref,pi
   use FUNCTIONS_IN_MODELS

   implicit none
   double precision, intent(in):: t,vx,vy,omega,sbase,ix,iy
   double precision, intent(out):: f(*)
   double precision :: obs(*)
   double precision, intent(inout):: x(*),prm(*),tc(*)
   integer, intent(in):: nb,mode,bus
   integer, intent(inout):: nbxvar,nbzvar,nbdata,nbaddpar,nbobs,eqtyp(*),z(*),adix,adiy
   character(len=20), intent(in):: name
   character(len=10) :: parname(*),obsname(*)

   select case (mode)
   case (define_var_and_par)
      nbdata=  2
      nbaddpar=  1
      parname(  1)='iextx'
      parname(  2)='iexty'
      parname(  3)='ii'
      adix=  1
      adiy=  2
      nbxvar=  4
      nbzvar=  0

!........................................................................................
   case (define_obs)
      nbobs=  2
      obsname(  1)='vx'
      obsname(  2)='vy'

!........................................................................................
   case (evaluate_obs)
      obs(  1)=vx                  
      obs(  2)=vy                  

!........................................................................................
   case (initialize)

!ii = {iextx}+{iexty}
      prm(  3)= prm(  1)+prm(  2)

!iobsx =  {iextx}
      x(  3)= prm(  1)

!iobsy =  {iexty}
      x(  4)= prm(  2)

!& algeq
      eqtyp(  1)=0

!& algeq
      eqtyp(  2)=0

!& tf1p          ! small time constant, less abrupt chng
      eqtyp(  3)=  1
      tc(  3)=0.001

!& tf1p
      eqtyp(  4)=  2
      tc(  4)=0.001

!........................................................................................
   case (evaluate_eqs)

!& algeq
      f(  1)=x(  3)-prm(  1)

!& algeq
      f(  2)=x(  4)-prm(  2)

!& tf1p          ! small time constant, less abrupt chng
      f(  3)=(-x(  1)+1.*x(  3))

!& tf1p
      f(  4)=(-x(  2)+1.*x(  4))

!........................................................................................
   case (update_disc)

!& algeq

!& algeq

!& tf1p          ! small time constant, less abrupt chng

!& tf1p
   end select

end subroutine inj_i_cst
