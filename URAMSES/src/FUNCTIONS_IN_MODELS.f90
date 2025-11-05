module functions_in_models
   
contains
    
   double precision function ppower(vx,vy,ix,iy)

   !   active power

       double precision, intent(in):: vx,vy,ix,iy
    
       ppower=vx*ix+vy*iy
   end function ppower
 
    
   double precision function qpower(vx,vy,ix,iy)

   !   reactive power

       double precision, intent(in):: vx,vy,ix,iy
   
       qpower=vy*ix-vx*iy
   end function qpower
 
    
   double precision function vrectif(if,vin,kc)
    
   !   IEEE standard excitation models
   !   function modelling the voltage drop in rectifiers
    
      double precision, intent(in):: if,vin,kc
      double precision:: in
    
      in=kc*if/max(vin,1d-03)
      if (in <= 0.d0) then
         vrectif=vin
      elseif (in <= 0.433) then
         vrectif=vin-0.577*kc*if
      elseif (in < 0.75) then
         vrectif=dsqrt(0.75*vin**2-(kc*if)**2)
      elseif (in < 1.d0) then
         vrectif=1.732*(vin-kc*if)
      else
         vrectif=0.d0
      endif
   end function vrectif
   
   
double precision function vinrectif(if,vrectif,kc)
    
   !   IEEE standard excitation models
   !   inverse function of vrectif
    
      double precision, intent(in):: if,vrectif,kc
      double precision:: in,vinest
      integer:: nbtries
    
      nbtries=1
      vinest=vrectif+0.577*kc*if
      do 
         in=kc*if/max(vinest,1d-03)
         if (in <= 0.d0) then
            vinrectif=vrectif
         elseif (in <= 0.433) then
            vinrectif=vrectif+0.577*kc*if
         elseif (in < 0.75) then
            vinrectif=dsqrt((vrectif**2+(kc*if)**2)/0.75)  
         else
            vinrectif=(vrectif/1.732)+kc*if
         endif
         if(vinrectif==vinest.or.nbtries>5)exit
         nbtries=nbtries+1
         vinest=vinrectif
      end do
end function vinrectif
 
    
   double precision function vcomp(v,p,q,Kv,Rc,Xc)

   !  compensated voltage magnitude
    
      double precision, intent(in):: v,p,q,Kv,Rc,Xc
    
      vcomp=dsqrt((Kv*v**2+Rc*p+Xc*q)**2+(Xc*p-Rc*q)**2)/v
   end function vcomp
 
    
   double precision function satur(ve,ve1,se1,ve2,se2)

   !   IEEE standard excitation models
   !   saturation function
    
       double precision, intent(in):: ve,ve1,se1,ve2,se2
       double precision:: n
    
       if(ve1==ve2 .or. ve1<=0.d0 .or. ve2<=0.d0 .or. se1<=0.d0 .or. se2<=0.d0)then
          satur=0.d0
       else
          if(ve<=0.d0)then
             satur=0.d0
          else
             n=log10(se1/se2)/log10(ve1/ve2)
             satur=se1*(ve/ve1)**n
          endif
       endif
   end function satur
   
   
   double precision function equal(var1,var2)
   
   !  returns 1.d0 if var1 approaches var2 by less than 1d-6, 0.d0 otherwise
   
      double precision:: var1,var2
      
      if(dabs(var1-var2)<1.d-6)then
          equal=1.d0
      else
          equal=0.d0
      endif
      
   end function equal

   double precision function equalstr(str1,str2)
   
   !  returns 1.d0 if the non-blank part of str1 and str2 are the same, 0.d0 otherwise
   
      character:: str1,str2
      
      if(trim(str1)==trim(str2))then
          equalstr=1.d0
      else
          equalstr=0.d0
      endif
      
   end function equalstr
   
!   double precision function INI_indmach1(name,sbase,SNOM,RS,Lls,LSR,RR,Llr,A,B,LF,vx,vy,ix,iy,typprm)
!
!   use UNITS, only : log
!   use INI_indmach1_mod
!
!   implicit none
!
!   double precision, intent(in):: sbase,RS,Lls,LSR,Llr,RR,A,B,LF,vx,vy,ix,iy
!   double precision, intent(inout):: SNOM
!   character(len=*), intent(in):: typprm
!   character(len=20), intent(in):: name
!
!   double precision f(5),JAC(5,5),fmax,tol,LSS,LRR
!   integer IPVT(5),info,nbit
!
!   select case (typprm)
!
!   case ('')                             ! compute initial values of motor variables
!                                         ! y = ( Bsh, Tmo, psidr0, psiqr0, omega0 )
!      if (SNOM == 0.d0) then
!         if (LF == 0.d0) then
!            write(log,"(' Induction machine ',a20,': has both SNOM and LF equal to zero')")name
!            stop
!         else
!            SNOM=dabs(vy*iy+vx*ix)/LF
!         endif
!      else
!         SNOM=SNOM/sbase
!      endif
!
!      LSS=LSR+Lls
!      LRR=LSR+Llr
!
!      y(1)=0.d0
!      y(2)=(-vy*iy-vx*ix)/SNOM
!      y(3)=-(LSR/LSS)*vx
!      y(4)=(LSR/LSS)*vy
!      if ((vx*ix+vy*iy) < 0)then        ! motor case
!         y(5)=0.99
!      else                              ! generator case
!         y(5)=1.01
!      endif
!
!      fmax=999.
!      nbit=1
!      tol=0.0001d0
!
!      do while (fmax > tol .and. nbit < 11)
!
!         JAC(1,1)=-RS*vx+(LSS-LSR**2/LRR)*vy
!         JAC(1,2)=0.d0
!         JAC(1,3)=0.d0
!         JAC(1,4)=LSR/LRR
!         JAC(1,5)=0.d0
!         JAC(2,1)=RS*vy+(LSS-LSR**2/LRR)*vx
!         JAC(2,2)=0.d0
!         JAC(2,3)=-LSR/LRR
!         JAC(2,4)=0.d0
!         JAC(2,5)=0.d0
!         JAC(3,1)=-vx*LSR*RR/LRR
!         JAC(3,2)=0.d0
!         JAC(3,3)=-RR/LRR
!         JAC(3,4)=-1+y(5)
!         JAC(3,5)=y(4)
!         JAC(4,1)=vy*LSR*RR/LRR
!         JAC(4,2)=0.d0
!         JAC(4,3)=1-y(5)
!         JAC(4,4)=-RR/LRR
!         JAC(4,5)=-y(3)
!         JAC(5,1)=(-y(4)*vx-y(3)*vy)*LSR/LRR
!         JAC(5,2)=-A*y(5)**2-B*y(5)-(1-A-B)
!         JAC(5,3)=(ix-y(1)*vy)*LSR/LRR
!         JAC(5,4)=(-iy-y(1)*vx)*LSR/LRR
!         JAC(5,5)=-y(2)*(2*A*y(5)+B)
!
!         CALL DGETRF (5,5,JAC,5,IPVT,info)
!
!         f(1)=RS*(-iy/SNOM-y(1)*vx) + (LSS-LSR**2/LRR)*(-ix/SNOM+y(1)*vy) + y(4)*LSR/LRR - vy
!         f(2)=RS*(-ix/SNOM+y(1)*vy) - (LSS-LSR**2/LRR)*(-iy/SNOM-y(1)*vx) - y(3)*LSR/LRR - vx
!         f(3)=-y(3)*RR/LRR + (-iy/SNOM-y(1)*vx)*LSR*RR/LRR - (1-y(5))*y(4)
!         f(4)=-y(4)*RR/LRR + (-ix/SNOM+y(1)*vy)*LSR*RR/LRR + (1-y(5))*y(3)
!         f(5)=( y(4)*(-iy/SNOM-y(1)*vx)-y(3)*(-ix/SNOM+y(1)*vy) )*LSR/LRR - y(2)*(A*y(5)**2+B*y(5)+1-A-B)
!         f=-f
!
!         CALL DGETRS('N',5,1,JAC,5,IPVT,f,5,info)
!
!         y=y+f
!
!         fmax=0.d0
!         fmax=maxval(dabs(f(1:5)))
!
!         nbit=nbit+1
!      enddo
!
!      if(fmax > tol)then
!         write(log,"('INDMACH1 ',a20,': iterative initialization of states failed.')")name
!         stop
!      endif
!
!   case('bsh')
!       INI_indmach1=y(1)
!   case('tm0')
!       INI_indmach1=y(2)
!   case('psidr0')
!       INI_indmach1=y(3)
!   case('psiqr0')
!       INI_indmach1=y(4)
!   case('omega0')
!       INI_indmach1=y(5)
!   case default
!       write(log,"('INI_INDMACH1 called with wrong value of typprm')")
!       stop
!   end select
!   
!end function INI_indmach1

double precision function INI_AIR_COND1(name,sbase,SNOM,RS,Lls,LSR,RR,Llr,A,B,LF,alfa,TMNOM,vx,vy,omegaref,ix,iy,typprm)

    use UNITS, only : log

    implicit none

    double precision, intent(in):: sbase,RS,Lls,LSR,Llr,RR,A,B,LF,TMNOM,vx,vy,ix,iy,omegaref
    double precision, intent(inout):: SNOM, alfa
    character(len=*), intent(in):: typprm
    character(len=20), intent(in):: name

    double precision f(5),JAC(5,5),fmax,tol,LSS,LRR
    double precision, save :: y(5)=0.d0
    integer IPVT(5),info,nbit

    select case (typprm)

    case ('')                             ! compute initial values of motor variables
                                         ! y = ( Bsh, Tmo, psidr0, psiqr0, omega0 )
      if (SNOM == 0.d0) then
         if (LF == 0.d0) then
            write(log,"(' Induction machine ',a20,': has both SNOM and LF equal to zero')")name
            stop
         else
            SNOM=dabs(vy*iy+vx*ix)/LF
         endif
      else
         SNOM=SNOM/sbase
      endif

     LSS=LSR+Lls
     LRR=LSR+Llr
     
    if ((vx*ix+vy*iy)<0.d0) then
        alfa=1.d0
    else
        alfa=0.d0
    endif

    if (alfa<0.5d0)then
      y(1)=0.d0 ! bsh0=0
      y(2)=TMNOM ! nominal torque in pu (motor base) used as initial value
      y(3)=0.d0 !psidr0
      y(4)= vy*LRR/(LSR*omegaref) !psiqr0
      y(5)=0.d0 ! omega0
    else


      y(1)=0.d0
      y(2)=(-vy*iy-vx*ix)/SNOM
      y(3)=-(LSR/LSS)*vx
      y(4)=(LSR/LSS)*vy
      if ((vx*ix+vy*iy) < 0)then        ! motor case
         y(5)=0.99
      else                              ! generator case
         y(5)=1.01
      endif

      fmax=999.
      nbit=1
      tol=0.0001d0

      do while (fmax > tol .and. nbit < 11)

         JAC(1,1)=-RS*vx+(LSS-LSR**2/LRR)*vy
         JAC(1,2)=0.d0
         JAC(1,3)=0.d0
         JAC(1,4)=LSR/LRR
         JAC(1,5)=0.d0
         JAC(2,1)=RS*vy+(LSS-LSR**2/LRR)*vx
         JAC(2,2)=0.d0
         JAC(2,3)=-LSR/LRR
         JAC(2,4)=0.d0
         JAC(2,5)=0.d0
         JAC(3,1)=-vx*LSR*RR/LRR
         JAC(3,2)=0.d0
         JAC(3,3)=-RR/LRR
         JAC(3,4)=-1+y(5)
         JAC(3,5)=y(4)
         JAC(4,1)=vy*LSR*RR/LRR
         JAC(4,2)=0.d0
         JAC(4,3)=1-y(5)
         JAC(4,4)=-RR/LRR
         JAC(4,5)=-y(3)
         JAC(5,1)=(-y(4)*vx-y(3)*vy)*LSR/LRR
         JAC(5,2)=-A*y(5)**2-B*y(5)-(1-A-B)
         JAC(5,3)=(ix-y(1)*vy)*LSR/LRR
         JAC(5,4)=(-iy-y(1)*vx)*LSR/LRR
         JAC(5,5)=-y(2)*(2*A*y(5)+B)

         CALL DGETRF (5,5,JAC,5,IPVT,info)

         f(1)=RS*(-iy/SNOM-y(1)*vx) + (LSS-LSR**2/LRR)*(-ix/SNOM+y(1)*vy) + y(4)*LSR/LRR - vy
         f(2)=RS*(-ix/SNOM+y(1)*vy) - (LSS-LSR**2/LRR)*(-iy/SNOM-y(1)*vx) - y(3)*LSR/LRR - vx
         f(3)=-y(3)*RR/LRR + (-iy/SNOM-y(1)*vx)*LSR*RR/LRR - (1-y(5))*y(4)
         f(4)=-y(4)*RR/LRR + (-ix/SNOM+y(1)*vy)*LSR*RR/LRR + (1-y(5))*y(3)
         f(5)=( y(4)*(-iy/SNOM-y(1)*vx)-y(3)*(-ix/SNOM+y(1)*vy) )*LSR/LRR - y(2)*(A*y(5)**2+B*y(5)+1-A-B)
         f=-f

         CALL DGETRS('N',5,1,JAC,5,IPVT,f,5,info)

         y=y+f

         fmax=0.d0
         fmax=maxval(dabs(f(1:5)))

         nbit=nbit+1
      enddo

      if(fmax > tol)then
         write(log,"('INDMACH1 ',a20,': iterative initialization of states failed.')")name
         stop
      endif
    endif
    case('bsh')
       INI_AIR_COND1=y(1)
    case('tm0')
       INI_AIR_COND1=y(2)
    case('psidr0')
       INI_AIR_COND1=y(3)
    case('psiqr0')
       INI_AIR_COND1=y(4)
    case('omega0')
       INI_AIR_COND1=y(5)
    case default
       write(log,"('INI_AIR_COND1 called with wrong value of typprm')")
       stop
    end select

end function INI_AIR_COND1

double precision function fcnIqrsBattery(IqrminPar,IqrmaxPar,QGENO,STRINGIq)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: IqrminPar,IqrmaxPar,QGENO
  character(len=*), intent(in):: STRINGIq

  double precision IqrminFin,IqrmaxFin

  if (QGENO > 0.) then
    IqrminFin = -999999999.
    IqrmaxFin = IqrmaxPar
  elseif (QGENO == 0.) then
    IqrminFin = -999999999.
    IqrmaxFin = 999999999.
  else
    IqrminFin = IqrminPar
    IqrmaxFin = 999999999.
  endif

  select case (STRINGIq)
  case ('Iqrmin')
    fcnIqrsBattery = IqrminFin
  case ('Iqrmax')
    fcnIqrsBattery = IqrmaxFin
  case default
      write(log,"('fcnIqrsBattery called with wrong value of STRINGIq')")
      stop
  end select
  
end function fcnIqrsBattery



double precision function satuRATION(x,xmin,xmax)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: x,xmin,xmax

  if (x <= xmin) then
    satuRATION = xmin
  elseif (xmin < x .and. x <= xmax) then
    satuRATION = x
  else
    satuRATION = xmax
  endif
  
end function satuRATION


double precision function switchx55yFPLLBattery(X54,VT0,VTMAX)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: X54,VT0,VTMAX

  if (VT0 <= VTMAX) then
    switchx55yFPLLBattery = 0.
  else
    switchx55yFPLLBattery = X54
  endif
  
end function switchx55yFPLLBattery


double precision function fcnx57Battery(VT0,LVPNT0,LVPNT1)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: VT0,LVPNT0,LVPNT1

  if (VT0 <= LVPNT0) then
    fcnx57Battery = 0.
  elseif (LVPNT0 < VT0 .and. VT0 < LVPNT1) then
    fcnx57Battery = (VT0 - LVPNT0)/(LVPNT1 - LVPNT0)
  else
    fcnx57Battery = 1.
  endif
  
end function fcnx57Battery


double precision function fcnVDLsBattery(x1,x2,x3,x4,y1,y2,y3,y4,VT0)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: x1,x2,x3,x4,y1,y2,y3,y4,VT0

  if (VT0 <= x1) then
    fcnVDLsBattery = y1
  elseif (x1 < VT0 .and. VT0 <= x2) then
    fcnVDLsBattery = (y2-y1)*(VT0-x1)/(x2-x1) + y1
  elseif (x2 < VT0 .and. VT0 <= x3) then
    fcnVDLsBattery = (y3-y2)*(VT0-x2)/(x3-x2) + y2
  elseif (x3 < VT0 .and. VT0 <= x4) then
    fcnVDLsBattery = (y4-y3)*(VT0-x3)/(x4-x3) + y3
  else
    fcnVDLsBattery = y4
  endif
  
end function fcnVDLsBattery


double precision function switch(option1,option0,Flag)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: option1,option0,Flag

  if (Flag == 1.d0) then
    switch = option1
  else
    switch = option0
  endif
  
end function switch

double precision function minBattery(x,y)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: x,y

  if (x <= y) then
    minBattery = x
  else
    minBattery = y
  endif
  
end function minBattery


double precision function fcnVerificLimIREEC_A(name,Iqmax,Iqmin,Iqcmd,Ipmax,Ipcmd,VDIP,VUP,VT0)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: Iqmax,Iqmin,Iqcmd,Ipmax,Ipcmd,VDIP,VUP,VT0
  character(len=20), intent(in):: name

  double precision Ipmin

  Ipmin = 0.

  if (Iqmax < Iqcmd .or. Iqcmd < Iqmin) then
    write(log,"('Battery initiated with wrong value of Iq')")name
    stop
  endif

  if (Ipmax < Ipcmd .or. Ipcmd < Ipmin) then
    write(log,"('Battery initiated with wrong value of Ip')")name
    stop
  endif

  if (VUP < VT0 .or. VT0 < VDIP) then
    write(log,"('Battery initiated with a voltage dip')")name
    stop
  endif

  fcnVerificLimIREEC_A = Ipmin
  
end function fcnVerificLimIREEC_A


double precision function IniREEC_Ax45Yx24(PFLAG,x23,WG,STROUTPUT)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: PFLAG,x23,WG
  character(len=*), intent(in):: STROUTPUT

  double precision X24,X45

  if (PFLAG == 1.d0) then
    X24 = x23
	X45 = X24/WG
  else
    X24 = x23*WG
	X45 = x23
  endif
  
  select case (STROUTPUT)
  case ('x24')
    IniREEC_Ax45Yx24 = X24
  case ('x45')
    IniREEC_Ax45Yx24 = X45
  case default
      write(log,"('IniREEC_Ax45Yx24 called with wrong value of STROUTPUT')")
      stop
  end select
  
end function IniREEC_Ax45Yx24



double precision function deadBAND(x,a,b)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: x,a,b

  if (x <= a) then
    deadBAND = x - a
  elseif (a < x .and. x <= b) then
    deadBAND = 0.
  else
    deadBAND = x - b
  endif
  
end function deadBAND


double precision function Ini_Branch_Q_REECA(QFLAG,VFLAG,X42,VT0,QGEN0,VREF1,STRINGOUTPUT)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: QFLAG,VFLAG,X42,VT0,QGEN0,VREF1
  character(len=*), intent(in):: STRINGOUTPUT

  double precision X38,X52,X37,X36,X35,X34,X33,X51,X32,X31,X30,X29,X25,X39,X40,X41

  if (QFLAG == 1.d0) then
    X38 = X42
    X52 = X38
    X37 = 0.
    X36 = 0.
    X35 = VT0
    X34 = X35
    
    if (VFLAG == 1.d0) then
      X33 = X34
      X51 = X33
      X32 = 0.
      X31 = 0.
      X30 = QGEN0
      X29 = X30
      X39 = X29/VT0
      X40 = 0.
      X41 = X39
	  X25 = X29 + VREF1
      
    else
      X25 = X34
	  X29 = X25 - VREF1
      X30 = 0
      X31 = 0.
      X32 = 0.
      X51 = 0.
      X33 = 0.
      X39 = X29/VT0
      X40 = 0.
      X41 = X39
      
    endif
    
    
  else
    X41 = X42
    X40 = 0.
    X39 = X41
    X29 = X39*VT0
	X25 = X29 + VREF1
    X30 = 0.
    X31 = 0.
    X32 = 0.
    X51 = 0.
    X33 = 0.
    X34 = 0.
    X35 = 0.
    X36 = 0.
    X37 = 0.
    X52 = 0.
    X38 = 0.
    
  endif

  select case (STRINGOUTPUT)
  case ('x38')
    Ini_Branch_Q_REECA = X38
  case ('x52')
    Ini_Branch_Q_REECA = X52
  case ('x37')
    Ini_Branch_Q_REECA = X37
  case ('x36')
    Ini_Branch_Q_REECA = X36
  case ('x35')
    Ini_Branch_Q_REECA = X35
  case ('x34')
    Ini_Branch_Q_REECA = X34
  case ('x33')
    Ini_Branch_Q_REECA = X33
  case ('x51')
    Ini_Branch_Q_REECA = X51
  case ('x32')
    Ini_Branch_Q_REECA = X32
  case ('x31')
    Ini_Branch_Q_REECA = X31
  case ('x30')
    Ini_Branch_Q_REECA = X30
  case ('x29')
    Ini_Branch_Q_REECA = X29
  case ('x25')
    Ini_Branch_Q_REECA = X25
  case ('x39')
    Ini_Branch_Q_REECA = X39
  case ('x40')
    Ini_Branch_Q_REECA = X40
  case ('x41')
    Ini_Branch_Q_REECA = X41
  case default
      write(log,"('Ini_Branch_Q_REECA called with wrong value of STRINGOUTPUT')")
      stop
  end select

end function Ini_Branch_Q_REECA


subroutine ini_ATL(name, Tc0, iT0, wm0, idc0, t0, t1, t2, kT, b, vdc0, ra )

  use UNITS, only : log

  implicit none

   
   double precision, intent(in):: idc0, t0, t1, t2, kT, b, vdc0, ra 
   double precision, intent(inout):: Tc0, iT0, wm0
   character(len=20), intent(in):: name

   double precision y(3),f(3),JAC(3,3),fmax,LA,LB,tol
   integer IPVT(3),info,i,nbit

   !> for newton solver (hybrd)
   integer, parameter :: lwa=200
   double precision :: wa(lwa)


   ! determination of Tc0 iT0 wm0 by solving the equilibrium equations
   ! y = ( Tc0 iT0 wm0 )

   y(1)=Tc0
   y(2)=iT0
   y(3)=wm0

   tol=0.0001d0

   CALL hybrd1(fcn,3,y,f,tol,info,wa,lwa)

   fmax=0.d0
   fmax=maxval(dabs(f(1:3)))
   if(fmax>tol)then
      write(log,"('ATL ',a,' iterative initialization of states failed.')")trim(name)
      stop
   endif


   Tc0=y(1)
   iT0=y(2)
   wm0=y(3)


contains
   subroutine fcn(n,y,f,IFLAG)
      implicit none
      integer, intent(IN)  :: n, IFLAG
      double precision, intent(IN) :: y(n)
      double precision, intent(out) :: f(n)

      !> determination of Tc0 iT0 wm0 by solving the equilibrium equations
      !! y = ( 1   2   3    )
      !! y = ( Tc0 iT0 wm0  )

      f(1) = -y(1)+t2*y(3)**2+t1*y(3)+t0
      f(2) = -idc0 + (y(3)*kT*y(2) + ra*y(2)**2)/ vdc0
      f(3) = -y(2)+ 1/kT*(y(1)+b*y(3))
   end subroutine fcn

end subroutine ini_ATL








double precision function fcnVerificLimIBattery(name,Iqmax,Iqmin,Iqcmd,Ipmax,Ipcmd,VDIP,VUP,VT0)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: Iqmax,Iqmin,Iqcmd,Ipmax,Ipcmd,VDIP,VUP,VT0
  character(len=20), intent(in):: name

  double precision Ipmin

  Ipmin = -Ipmax

  if (Iqmax < Iqcmd .or. Iqcmd < Iqmin) then
    write(log,"('Battery initiated with wrong value of Iq')")name
    stop
  endif

  if (Ipmax < Ipcmd .or. Ipcmd < Ipmin) then
    write(log,"('Battery initiated with wrong value of Ip')")name
    stop
  endif

  if (VUP < VT0 .or. VT0 < VDIP) then
    write(log,"('Battery initiated with a voltage dip')")name
    stop
  endif

  fcnVerificLimIBattery = Ipmin
  
end function fcnVerificLimIBattery


double precision function Ini_Branch_Q_Battery(QFLAG,VFLAG,X42,VT0,QGEN0,STRINGOUTPUT)

  use UNITS, only : log

  implicit none

  double precision, intent(in):: QFLAG,VFLAG,X42,VT0,QGEN0
  character(len=*), intent(in):: STRINGOUTPUT

  double precision X38,X52,X37,X36,X35,X34,X33,X51,X32,X31,X30,X29,X39,X40,X41

  if (QFLAG == 1.d0) then
    X38 = X42
    X52 = X38
    X37 = 0.
    X36 = 0.
    X35 = VT0
    X34 = X35
    
    if (VFLAG == 1.d0) then
      X33 = X34
      X51 = X33
      X32 = 0.
      X31 = 0.
      X30 = QGEN0
      X29 = X30
      X39 = X29/VT0
      X40 = 0.
      X41 = X39
      
    else
      X29 = X34
      X30 = 0.
      X31 = 0.
      X32 = 0.
      X51 = 0.
      X33 = 0.
      X39 = X29/VT0
      X40 = 0.
      X41 = X39
      
    endif
    
    
  else
    X41 = X42
    X40 = 0.
    X39 = X41
    X29 = X39*VT0
    X30 = 0.
    X31 = 0.
    X32 = 0.
    X51 = 0.
    X33 = 0.
    X34 = 0.
    X35 = 0.
    X36 = 0.
    X37 = 0.
    X52 = 0.
    X38 = 0.
    
  endif

  select case (STRINGOUTPUT)
  case ('x38')
    Ini_Branch_Q_Battery = X38
  case ('x52')
    Ini_Branch_Q_Battery = X52
  case ('x37')
    Ini_Branch_Q_Battery = X37
  case ('x36')
    Ini_Branch_Q_Battery = X36
  case ('x35')
    Ini_Branch_Q_Battery = X35
  case ('x34')
    Ini_Branch_Q_Battery = X34
  case ('x33')
    Ini_Branch_Q_Battery = X33
  case ('x51')
    Ini_Branch_Q_Battery = X51
  case ('x32')
    Ini_Branch_Q_Battery = X32
  case ('x31')
    Ini_Branch_Q_Battery = X31
  case ('x30')
    Ini_Branch_Q_Battery = X30
  case ('x29')
    Ini_Branch_Q_Battery = X29
  case ('x39')
    Ini_Branch_Q_Battery = X39
  case ('x40')
    Ini_Branch_Q_Battery = X40
  case ('x41')
    Ini_Branch_Q_Battery = X41
  case default
      write(log,"('Ini_Branch_Q_Battery called with wrong value of STRINGOUTPUT')")
      stop
  end select

end function Ini_Branch_Q_Battery


end module functions_in_models
