!  MODEL NAME : inj_ATL2aa              
!  MODEL DESCRIPTION FILE : ATL2a.txt
!  Data :
!       prm(  1)=  Sb                              ! base power of the atl
!       prm(  2)=  tau                             ! Pll time constant
!       prm(  3)=  kp_p                            ! power control parameters
!       prm(  4)=  ki_p
!       prm(  5)=  kp_w                            ! motor speed control parameters
!       prm(  6)=  ki_w
!       prm(  7)=  rt                              ! terminal impedance
!       prm(  8)=  lt
!       prm(  9)=  ra                              ! motor anchor/stator resistance
!       prm( 10)=  H                               ! motor inertia
!       prm( 11)=  b                               ! motor friction coefficient
!       prm( 12)=  Vmax                            ! voltage range during which unit needs to stay connected
!       prm( 13)=  Vmin
!       prm( 14)=  Vint
!       prm( 15)=  Vr
!       prm( 16)=  tLVRT1
!       prm( 17)=  tLVRT2
!       prm( 18)=  tLVRTint
!       prm( 19)=  Vtrip
!       prm( 20)=  fmin                            ! frequency control regime
!       prm( 21)=  fmax
!       prm( 22)=  Trocof                          ! delay for ROCOF measurement
!       prm( 23)=  dfmax                           ! maximum permissable ROCOF
!       prm( 24)=  VPmin                           ! power limit below 0.9 pu of Voltage
!       prm( 25)=  VPmax                           ! power limit above 0.93 pu voltage
!       prm( 26)=  LVRT                            ! enable or disable LVRT
!       prm( 27)=  Tm                              ! measurement delay
!       prm( 28)=  fdbdn
!       prm( 29)=  fdbup
!       prm( 30)=  fpmax                           ! frequency at which maximum consumption power is required
!       prm( 31)=  fpmin                           ! frequency at which minimum power consumption is required
!       prm( 32)=  Rdn                             ! down droop constant
!       prm( 33)=  Rup                             ! up droop constant
!       prm( 34)=  dfdbup                          ! rocof deadband
!       prm( 35)=  dfdbdn
!       prm( 36)=  Fctrl                           ! 0 uses Rdn/Rup, 1 uses piecewise linear droop
!       prm( 37)=  Fsust                           ! 0 linear droop, 1 sustained droop
!       prm( 38)=  Finertia                        ! 0 no inertia support, 1 virtual inertia support
!       prm( 39)=  FPlim                           ! 0 no active power curtailment during undervoltage, 1 active power curtailment
!       prm( 40)=  protection                      ! Flag for protection, -1 for off, 1 for on
!       prm( 41)=  support                         ! Flag for grid support, -1 for off, 1 for on
!  Parameters :
!       prm( 42)=  Sbs   base power of the system
!       prm( 43)=  vdc_star   DC link voltage reference
!       prm( 44)=  pf   setpoint for power factor at the terminal
!       prm( 45)=  Vminpll   PLL freezing voltage, PLL freezes below this value
!       prm( 46)=  tau_f   filter constant for frequency
!       prm( 47)=  kp_v   DC link voltage control parameters
!       prm( 48)=  ki_v  
!       prm( 49)=  kp_c   rectifier current control parameters
!       prm( 50)=  ki_c  
!       prm( 51)=  w_cc   motor current control bandwidth
!       prm( 52)=  cdc   DC link capacitance
!       prm( 53)=  kw   speed/torque control constant
!       prm( 54)=  kT   motor torque constant
!       prm( 55)=  Tnm   compressor torque at nominal speed
!       prm( 56)=  iF   motor field current, equal to 0 in case of BLDC and PMSM
!       prm( 57)=  wm_min   limits on rotational speed
!       prm( 58)=  wm_max  
!       prm( 59)=  w0  
!       prm( 60)=  wb  
!       prm( 61)=  t2   Torque polynomial parameters, set to constant torque
!       prm( 62)=  t1  
!       prm( 63)=  t0  
!       prm( 64)=  Tlim  
!       prm( 65)=  Downlim  
!       prm( 66)=  Downlimdisc  
!       prm( 67)=  UplimdeltaP  
!       prm( 68)=  DownlimdeltaP  
!       prm( 69)=  Uplimdis  
!       prm( 70)=  downlimdis  
!       prm( 71)=  theta0  
!       prm( 72)=  P0   initial active power
!       prm( 73)=  Q0   initial reactive power
!       prm( 74)=  P0_unit  
!       prm( 75)=  Q0_unit  
!       prm( 76)=  V0   initial voltage magnitude at bus
!       prm( 77)=  iP0   current alignment
!       prm( 78)=  iQ0  
!       prm( 79)=  vd0   voltage alignment
!       prm( 80)=  vq0  
!       prm( 81)=  md0   modulation indices
!       prm( 82)=  mq0  
!       prm( 83)=  idc0   DC link current
!       prm( 84)=  iT0  
!       prm( 85)=  wm0  
!       prm( 86)=  Te0  
!       prm( 87)=  Tc0  
!       prm( 88)=  df_up  
!       prm( 89)=  df_dn  
!       prm( 90)=  dPup1   Historical
!       prm( 91)=  dPdn1   Historical
!       prm( 92)=  ddf  
!  Output states :
!       x(  1)=  ix           real component of current
!       x(  2)=  iy           imaginary component of current
!  Internal states defined by user :
!       x(  3)=  vd                    
!       x(  4)=  vq                    
!       x(  5)=  theta                 
!       x(  6)=  vdc_ref               
!       x(  7)=  V                     
!       x(  8)=  vxm                   
!       x(  9)=  vym                   
!       x( 10)=  Vm                    
!       x( 11)=  iP                    
!       x( 12)=  diP                   
!       x( 13)=  iQ                    
!       x( 14)=  diQ                   
!       x( 15)=  P                     
!       x( 16)=  dp                    
!       x( 17)=  Punit                 
!       x( 18)=  Q                     
!       x( 19)=  Qunit                 
!       x( 20)=  Pref_lim               limited P reference
!       x( 21)=  dw_pll                
!       x( 22)=  dw_pllf               
!       x( 23)=  deltaf                
!       x( 24)=  w_pll                 
!       x( 25)=  f                     
!       x( 26)=  fi                    
!       x( 27)=  vdc                   
!       x( 28)=  dvdc                  
!       x( 29)=  iP_ref                
!       x( 30)=  Plim                  
!       x( 31)=  Plimin                
!       x( 32)=  iQ_ref                
!       x( 33)=  mdr                   
!       x( 34)=  mqr                   
!       x( 35)=  md                    
!       x( 36)=  mq                    
!       x( 37)=  dvd                   
!       x( 38)=  dvq                   
!       x( 39)=  idc                   
!       x( 40)=  didc                  
!       x( 41)=  wm_ref                
!       x( 42)=  wm_ref_lim            
!       x( 43)=  wm_ref_lim_in         
!       x( 44)=  iT_ref                
!       x( 45)=  iT                    
!       x( 46)=  dwm                   
!       x( 47)=  wm                    
!       x( 48)=  Te                    
!       x( 49)=  dT                    
!       x( 50)=  F_pll                 
!       x( 51)=  dv_pll                
!       x( 52)=  deltafvh              
!       x( 53)=  z1                    
!       x( 54)=  Fvhi                  
!       x( 55)=  Fvh                   
!       x( 56)=  iPs                   
!       x( 57)=  iQs                   
!       x( 58)=  Pref                  
!       x( 59)=  x10                   
!       x( 60)=  z                     
!       x( 61)=  Fvl                   
!       x( 62)=  Fvli                  
!       x( 63)=  deltafl               
!       x( 64)=  Ffl                   
!       x( 65)=  Ffli                  
!       x( 66)=  deltafh               
!       x( 67)=  Ffh                   
!       x( 68)=  Ffhi                  
!       x( 69)=  rocof                 
!       x( 70)=  abrocof               
!       x( 71)=  deltarocof            
!       x( 72)=  Ffri                  
!       x( 73)=  Ffr                   
!       x( 74)=  Plim_min              
!       x( 75)=  w1                    
!       x( 76)=  w2                    
!       x( 77)=  dPupi                 
!       x( 78)=  dPup                  
!       x( 79)=  dPdni                 
!       x( 80)=  dPdn                  
!       x( 81)=  dP                    
!       x( 82)=  status                 status of the device, 1 for on
!       x( 83)=  p1                    
!       x( 84)=  p2                    
!       x( 85)=  p3                    
!       x( 86)=  s1                    
!       x( 87)=  s2                    
!       x( 88)=  one                   
!       x( 89)=  zero                  
!       x( 90)=  dPups                 
!       x( 91)=  dPdns                 
!       x( 92)=  dPdf                  
!       x( 93)=  dPdroop               
!       x( 94)=  rocof2                
!       x( 95)=  Pmax_flagged          

!.........................................................................................................

subroutine inj_ATL2aa(nb,name,mode,nbxvar,nbzvar,nbdata,nbaddpar,prm,parname,nbobs, &
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
      nbdata= 41
      nbaddpar= 51
      parname(  1)='Sb'
      parname(  2)='tau'
      parname(  3)='kp_p'
      parname(  4)='ki_p'
      parname(  5)='kp_w'
      parname(  6)='ki_w'
      parname(  7)='rt'
      parname(  8)='lt'
      parname(  9)='ra'
      parname( 10)='H'
      parname( 11)='b'
      parname( 12)='Vmax'
      parname( 13)='Vmin'
      parname( 14)='Vint'
      parname( 15)='Vr'
      parname( 16)='tLVRT1'
      parname( 17)='tLVRT2'
      parname( 18)='tLVRTint'
      parname( 19)='Vtrip'
      parname( 20)='fmin'
      parname( 21)='fmax'
      parname( 22)='Trocof'
      parname( 23)='dfmax'
      parname( 24)='VPmin'
      parname( 25)='VPmax'
      parname( 26)='LVRT'
      parname( 27)='Tm'
      parname( 28)='fdbdn'
      parname( 29)='fdbup'
      parname( 30)='fpmax'
      parname( 31)='fpmin'
      parname( 32)='Rdn'
      parname( 33)='Rup'
      parname( 34)='dfdbup'
      parname( 35)='dfdbdn'
      parname( 36)='Fctrl'
      parname( 37)='Fsust'
      parname( 38)='Finertia'
      parname( 39)='FPlim'
      parname( 40)='protection'
      parname( 41)='support'
      parname( 42)='Sbs'
      parname( 43)='vdc_star'
      parname( 44)='pf'
      parname( 45)='Vminpll'
      parname( 46)='tau_f'
      parname( 47)='kp_v'
      parname( 48)='ki_v'
      parname( 49)='kp_c'
      parname( 50)='ki_c'
      parname( 51)='w_cc'
      parname( 52)='cdc'
      parname( 53)='kw'
      parname( 54)='kT'
      parname( 55)='Tnm'
      parname( 56)='iF'
      parname( 57)='wm_min'
      parname( 58)='wm_max'
      parname( 59)='w0'
      parname( 60)='wb'
      parname( 61)='t2'
      parname( 62)='t1'
      parname( 63)='t0'
      parname( 64)='Tlim'
      parname( 65)='Downlim'
      parname( 66)='Downlimdisc'
      parname( 67)='UplimdeltaP'
      parname( 68)='DownlimdeltaP'
      parname( 69)='Uplimdis'
      parname( 70)='downlimdis'
      parname( 71)='theta0'
      parname( 72)='P0'
      parname( 73)='Q0'
      parname( 74)='P0_unit'
      parname( 75)='Q0_unit'
      parname( 76)='V0'
      parname( 77)='iP0'
      parname( 78)='iQ0'
      parname( 79)='vd0'
      parname( 80)='vq0'
      parname( 81)='md0'
      parname( 82)='mq0'
      parname( 83)='idc0'
      parname( 84)='iT0'
      parname( 85)='wm0'
      parname( 86)='Te0'
      parname( 87)='Tc0'
      parname( 88)='df_up'
      parname( 89)='df_dn'
      parname( 90)='dPup1'
      parname( 91)='dPdn1'
      parname( 92)='ddf'
      adix=  1
      adiy=  2
      nbxvar=104
      nbzvar= 25

!........................................................................................
   case (define_obs)
      nbobs= 11
      obsname(  1)='P'
      obsname(  2)='Q'
      obsname(  3)='wm'
      obsname(  4)='ix'
      obsname(  5)='iy'
      obsname(  6)='iP'
      obsname(  7)='iQ'
      obsname(  8)='vx'
      obsname(  9)='vy'
      obsname( 10)='status'
      obsname( 11)='dPdroop'

!........................................................................................
   case (evaluate_obs)
      obs(  1)=x( 15)              
      obs(  2)=x( 18)              
      obs(  3)=x( 47)              
      obs(  4)=x(  1)              
      obs(  5)=x(  2)              
      obs(  6)=x( 11)              
      obs(  7)=x( 13)              
      obs(  8)=vx                  
      obs(  9)=vy                  
      obs( 10)=x( 82)              
      obs( 11)=x( 93)              
      
           prm( 90) = x(90)
     prm (91) = x(91)

!........................................................................................
   case (initialize)

!Sbs = 1
      prm( 42)= 1

!vdc_star = 1
      prm( 43)= 1

!pf = 1
      prm( 44)= 1

!Vminpll = 0.3
      prm( 45)= 0.3

!tau_f = 0.25
      prm( 46)= 0.25

!kp_v = 4.04
      prm( 47)= 4.04

!ki_v = 16.5
      prm( 48)= 16.5

!kp_c = 0.9
      prm( 49)= 0.9

!ki_c = 30
      prm( 50)= 30

!w_cc = 200
      prm( 51)= 200

!cdc = 10.6
      prm( 52)= 10.6

!kw = 1
      prm( 53)= 1

!kT = 1
      prm( 54)= 1

!Tnm = 1
      prm( 55)= 1

!iF = 0
      prm( 56)= 0

!wm_min = -1e-6
      prm( 57)= -0.3

!wm_max = 1.3
      prm( 58)= 1.3

!w0 = 1
      prm( 59)= 1

!wb = 2*pi*fnom
      prm( 60)= 2*pi*fnom

!t2 = 0
      prm( 61)= 0

!t1 = 0
      prm( 62)= 0

!t0 = 1
      prm( 63)= 1

!Tlim = 0.01
      prm( 64)= 0.01

!Downlim = -9999
      prm( 65)= -9999

!Downlimdisc = 0
      prm( 66)= 0

!UplimdeltaP = 9999
      prm( 67)= 9999

!DownlimdeltaP = -9999
      prm( 68)= -9999

!Uplimdis = 0
      prm( 69)= 0

!downlimdis = -9999
      prm( 70)= -9999

!theta0 = atan([vy]/[vx])
      prm( 71)= atan(vy/vx)

!P0 = ([vx]*[ix]+[vy]*[iy])
      prm( 72)= (vx*ix+vy*iy)

!Q0 = [vy]*[ix]-[vx]*[iy]
      prm( 73)= vy*ix-vx*iy

!P0_unit = -{P0}*{Sbs}/{Sb}
      prm( 74)= -prm( 72)*prm( 42)/prm(  1)

!Q0_unit = -{Q0}*{Sbs}/{Sb}
      prm( 75)= -prm( 73)*prm( 42)/prm(  1)

!V0 = dsqrt([vx]**2+[vy]**2)
      prm( 76)= dsqrt(vx**2+vy**2)

!iP0 =  (-[ix]*cos({theta0})-[iy]*sin({theta0}))*{Sbs}/{Sb}
      prm( 77)=  (-ix*cos(prm( 71))-iy*sin(prm( 71)))*prm( 42)/prm(  1)

!iQ0 =  (-[ix]*sin({theta0})+[iy]*cos({theta0}))*{Sbs}/{Sb}
      prm( 78)=  (-ix*sin(prm( 71))+iy*cos(prm( 71)))*prm( 42)/prm(  1)

!vd0 = [vx]*cos({theta0})+[vy]*sin({theta0})
      prm( 79)= vx*cos(prm( 71))+vy*sin(prm( 71))

!vq0 = [vx]*sin({theta0})-[vy]*cos({theta0})
      prm( 80)= vx*sin(prm( 71))-vy*cos(prm( 71))

!md0 = 1/{vdc_star}*({vd0}+{lt}*{w0}*{iQ0}-{rt}*{iP0})
      prm( 81)= 1/prm( 43)*(prm( 79)+prm(  8)*prm( 59)*prm( 78)-prm(  7)*prm( 77))

!mq0 = 1/{vdc_star}*({vq0}-{lt}*{w0}*{iP0}-{rt}*{iQ0})
      prm( 82)= 1/prm( 43)*(prm( 80)-prm(  8)*prm( 59)*prm( 77)-prm(  7)*prm( 78))

!idc0 = {md0}*{iP0}+{mq0}*{iQ0}
      prm( 83)= prm( 81)*prm( 77)+prm( 82)*prm( 78)

!iT0 = {Tnm}*{kT}/(2*{kT}**2+2*{ra}*{b}) + dsqrt(({Tnm}*{kT}/(2*{kT}**2+2*{ra}*{b}))**2-({ra}*{b}*{iF}**2-{b}*{idc0}*{vdc_star})/({kT}**2+{ra}*{b}))
      prm( 84)= prm( 55)*prm( 54)/(2*prm( 54)**2+2*prm(  9)*prm( 11)) + dsqrt((prm( 55)*prm( 54)/(2*prm( 54)**2+2*prm(  9)*prm( 11)))**2-(prm(  9)*prm( 11)*prm( 56)**2-prm( 11)*prm( 83)*prm( 43))/(prm( 54)**2+prm(  9)*prm( 11)))

!wm0 = 1/{b}*({kT}*{iT0}-{Tnm})
      prm( 85)= 1/prm( 11)*(prm( 54)*prm( 84)-prm( 55))

!Te0 = {iT0}*{kT}
      prm( 86)= prm( 84)*prm( 54)

!Tc0 = {Tnm}
      prm( 87)= prm( 55)

!df_up = {Fctrl}*((fnom)/({fpmax}-fnom)*({VPmax}-{P0_unit}))+(1-{Fctrl})*1/{Rup}
      prm( 88)= prm( 36)*((fnom)/(prm( 30)-fnom)*(prm( 25)-prm( 74)))+(1-prm( 36))*1/prm( 33)

!df_dn = {Fctrl}*((fnom)/(fnom-{fpmin})*({P0_unit}-{VPmin}))+(1-{Fctrl})*1/{Rdn}
      prm( 89)= prm( 36)*((fnom)/(fnom-prm( 31))*(prm( 74)-prm( 24)))+(1-prm( 36))*1/prm( 32)

!dPup1 = 0 		
      prm( 90)= 0 		

!dPdn1 = 0 		
      prm( 91)= 0 		

!ddf = {Tm}*max(abs({df_up}), abs({df_dn}))
      prm( 92)= prm( 27)*max(abs(prm( 88)), abs(prm( 89)))

!vd =  {vd0}
      x(  3)= prm( 79)

!vq =  {vq0}
      x(  4)= prm( 80)

!theta =  {theta0}
      x(  5)= prm( 71)

!vdc_ref = {vdc_star}
      x(  6)=prm( 43)

!V =  {V0}
      x(  7)= prm( 76)

!vxm =  [vx]
      x(  8)= vx

!vym =  [vy]
      x(  9)= vy

!Vm =  {V0}
      x( 10)= prm( 76)

!iP =   {iP0}
      x( 11)=  prm( 77)

!diP =  0
      x( 12)= 0

!iQ =   {iQ0}
      x( 13)=  prm( 78)

!diQ =  0
      x( 14)= 0

!P =  {P0}
      x( 15)= prm( 72)

!dp =  0
      x( 16)= 0

!Punit =  {P0_unit}
      x( 17)= prm( 74)

!Q =  {Q0}
      x( 18)= prm( 73)

!Qunit =  {Q0_unit}
      x( 19)= prm( 75)

!Pref_lim =  {P0_unit}
      x( 20)= prm( 74)

!dw_pll =  0
      x( 21)= 0

!dw_pllf =  0
      x( 22)= 0

!deltaf =  0
      x( 23)= 0

!w_pll =  {wb}
      x( 24)= prm( 60)

!f =  fnom
      x( 25)= fnom

!fi =  fnom
      x( 26)= fnom

!vdc =  {vdc_star}
      x( 27)= prm( 43)

!dvdc =  0
      x( 28)= 0

!iP_ref =  {iP0}
      x( 29)= prm( 77)

!Plim =  {VPmax}
      x( 30)= prm( 25)

!Plimin =  {VPmax}
      x( 31)= prm( 25)

!iQ_ref =  {iQ0}
      x( 32)= prm( 78)

!mdr =  {lt}/{vdc_star}*{iQ0}*{w0}-{md0}
      x( 33)= prm(  8)/prm( 43)*prm( 78)*prm( 59)-prm( 81)

!mqr =  -{lt}/{vdc_star}*{iP0}*{w0}-{mq0}
      x( 34)= -prm(  8)/prm( 43)*prm( 77)*prm( 59)-prm( 82)

!md =  {md0}
      x( 35)= prm( 81)

!mq =  {mq0}
      x( 36)= prm( 82)

!dvd =  {iP0}*{rt}
      x( 37)= prm( 77)*prm(  7)

!dvq =  {iQ0}*{rt}
      x( 38)= prm( 78)*prm(  7)

!idc =  {idc0}
      x( 39)= prm( 83)

!didc =  {md0}*{iP0}+{mq0}*{iQ0}-{idc0}
      x( 40)= prm( 81)*prm( 77)+prm( 82)*prm( 78)-prm( 83)

!wm_ref =  {wm0}
      x( 41)= prm( 85)

!wm_ref_lim =  {wm0}
      x( 42)= prm( 85)

!wm_ref_lim_in =  {wm0}
      x( 43)= prm( 85)

!iT_ref =  {iT0}
      x( 44)= prm( 84)

!iT =  {iT0}
      x( 45)= prm( 84)

!dwm =  0
      x( 46)= 0

!wm =  {wm0}
      x( 47)= prm( 85)

!Te =  {kT}*{iT0}
      x( 48)= prm( 54)*prm( 84)

!dT =  {kT}*{iT0}-{Tc0}
      x( 49)= prm( 54)*prm( 84)-prm( 87)

!F_pll =  1
      x( 50)= 1

!dv_pll =  {V0}-{Vminpll}
      x( 51)= prm( 76)-prm( 45)

!deltafvh =   {V0}-{Vmax}
      x( 52)=  prm( 76)-prm( 12)

!z1 =  0
      x( 53)= 0

!Fvhi =  1
      x( 54)= 1

!Fvh =  1
      x( 55)= 1

!iPs =  {iP0}
      x( 56)= prm( 77)

!iQs =  {iQ0}
      x( 57)= prm( 78)

!Pref =  {P0_unit}
      x( 58)= prm( 74)

!x10 =  -{V0}
      x( 59)= -prm( 76)

!z = 0
      x( 60)=0

!Fvl =  1
      x( 61)= 1

!Fvli =  1
      x( 62)= 1

!deltafl =  [f] - {fmin}
      x( 63)= x( 25) - prm( 20)

!Ffl =  1
      x( 64)= 1

!Ffli =  1
      x( 65)= 1

!deltafh =  {fmax} - [f]
      x( 66)= prm( 21) - x( 25)

!Ffh =  1
      x( 67)= 1

!Ffhi =  1
      x( 68)= 1

!rocof =  0
      x( 69)= 0

!abrocof =  0
      x( 70)= 0

!deltarocof =  {dfmax} - 0
      x( 71)= prm( 23) - 0

!Ffri =  1
      x( 72)= 1

!Ffr =  1
      x( 73)= 1

!Plim_min =  -0.00001
      x( 74)= -0.00001

!w1 =  0
      x( 75)= 0

!w2 =  0
      x( 76)= 0

!dPupi =  0
      x( 77)= 0

!dPup =  0
      x( 78)= 0

!dPdni =  0
      x( 79)= 0

!dPdn =  0
      x( 80)= 0

!dP =  0
      x( 81)= 0

!status =  1
      x( 82)= 1

!p1 =  {protection}
      x( 83)= prm( 40)

!p2 =  1
      x( 84)= 1

!p3 =  1
      x( 85)= 1

!s1 =  {support}
      x( 86)= prm( 41)

!s2 =  {wm0}
      x( 87)= prm( 85)

!one =  1
      x( 88)= 1

!zero =  0
      x( 89)= 0

!dPups =  0
      x( 90)= 0

!dPdns =  0
      x( 91)= 0

!dPdf =  0
      x( 92)= 0

!dPdroop =  0
      x( 93)= 0

!rocof2 =  0
      x( 94)= 0

!Pmax_flagged =  {VPmax}
      x( 95)= prm( 25)

!& algeq                                             ! voltage magnitude
      eqtyp(  1)=0

!& tf1p
      eqtyp(  2)= 10
      tc(  2)=prm( 27)

!& tf1p
      eqtyp(  3)=  8
      tc(  3)=prm( 27)

!& tf1p
      eqtyp(  4)=  9
      tc(  4)=prm( 27)

!& algeq                                             ! voltage alignment
      eqtyp(  5)=0

!& algeq
      eqtyp(  6)=0

!& algeq                                             ! compute ix
      eqtyp(  7)=0

!& algeq                                             ! compute iy
      eqtyp(  8)=0

!& algeq
      eqtyp(  9)=0

!& algeq
      eqtyp( 10)=0

!& algeq                                             ! compute powers
      eqtyp( 11)=0

!& algeq
      eqtyp( 12)=0

!& algeq                                             ! compute powers
      eqtyp( 13)=0

!& algeq
      eqtyp( 14)=0

!& int                                               ! voltage alignment angle, PLL angle
      if (1.d0< 0.005)then
         eqtyp( 15)=0
      else
         eqtyp( 15)=  5
         tc( 15)=1.d0
      endif

!& pictl                                             ! PLL
      eqtyp( 16)= 96
      x( 96)=x( 24)
      eqtyp( 17)=0

!& algeq                                             ! frequency deviation
      eqtyp( 18)=0

!& algeq
      eqtyp( 19)=0

!& algeq                                             ! compute and filter frequency
      eqtyp( 20)=0

!& tf1p
      eqtyp( 21)= 25
      tc( 21)=prm( 46)

!& algeq                                             ! PLL freezing
      eqtyp( 22)=0

!& swsign
      eqtyp( 23)=0
      if(x( 51)>=0.)then
         z(  1)=1
      else
         z(  1)=2
      endif

!& algeq
      eqtyp( 24)=0

!& algeq                                             ! DC voltage control
      eqtyp( 25)=0

!& pictl
      eqtyp( 26)= 97
      x( 97)=x( 29)
      eqtyp( 27)=0

!& algeq                                             ! p-axis current control
      eqtyp( 28)=0

!& pictl
      eqtyp( 29)= 98
      x( 98)=x( 33)
      eqtyp( 30)=0

!& algeq                                             ! q-axis current control
      eqtyp( 31)=0

!& algeq
      eqtyp( 32)=0

!& pictl
      eqtyp( 33)= 99
      x( 99)=x( 34)
      eqtyp( 34)=0

!& algeq                                             ! md
      eqtyp( 35)=0

!& algeq                                             ! mq
      eqtyp( 36)=0

!& algeq                                             ! voltage over d-axis terminal impedance
      eqtyp( 37)=0

!& algeq                                             ! voltage over q-axis terminal impedance
      eqtyp( 38)=0

!& tf1p                                              ! d-axis current
      eqtyp( 39)= 11
      tc( 39)=prm(  8)/(prm( 60)*prm(  7))

!& tf1p                                              ! q-axis current
      eqtyp( 40)= 13
      tc( 40)=prm(  8)/(prm( 60)*prm(  7))

!& algeq                                             ! DC link current
      eqtyp( 41)=0

!& algeq                                             ! DC link
      eqtyp( 42)=0

!& int                                               ! DC link voltage
      if (prm( 52)/prm( 60)< 0.005)then
         eqtyp( 43)=0
      else
         eqtyp( 43)= 27
         tc( 43)=prm( 52)/prm( 60)
      endif

!& algeq
      eqtyp( 44)=0

!& limvb                                              ! power limiter
      eqtyp( 45)=0
      if(x( 58)>x( 95))then
         z(  2)=1
      elseif(x( 58)<x( 74))then
         z(  2)=-1
      else
         z(  2)=0
      endif

!& algeq                                             ! power mismatch
      eqtyp( 46)=0

!& pictl                                             ! power control
      eqtyp( 47)=100
      x(100)=x( 41)
      eqtyp( 48)=0

!& lim                                               ! limit speed control input
      eqtyp( 49)=0
      if(x( 41)>prm( 58))then
         z(  3)=1
      elseif(x( 41)<prm( 57))then
         z(  3)=-1
      else
         z(  3)=0
      endif

!& algeq                                             ! speed control input
      eqtyp( 50)=0

!& pictl                                             ! speed control
      eqtyp( 51)=101
      x(101)=x( 44)
      eqtyp( 52)=0

!& tf1p                                              ! motor current control
      eqtyp( 53)= 45
      tc( 53)=1/prm( 51)

!& algeq                                             ! torque equations
      eqtyp( 54)=0

!& algeq
      eqtyp( 55)=0

!& tf1p                                              ! motor inertia
      eqtyp( 56)= 47
      tc( 56)=2*prm( 10)/prm( 11)

!& algeq
      eqtyp( 57)=0

!& pwlin4                                            ! Overvoltage Protection
      eqtyp( 58)=0
      if(x( 52)<(-999))then
         z(  4)=1
      elseif(x( 52)>=999)then
         z(  4)=   3
      elseif((-999)<=x( 52) .and. x( 52)<0.)then
         z(  4)=  1
      elseif(0.<=x( 52) .and. x( 52)<0.)then
         z(  4)=  2
      elseif(0.<=x( 52) .and. x( 52)<999)then
         z(  4)=  3
      endif

!& algeq
      eqtyp( 59)=0

!& hyst
      eqtyp( 60)=0
      if(x( 54)>1.1)then
         z(  5)=1
      elseif(x( 54)<0.9)then
         z(  5)=-1
      else
         if(1.>= 0.)then
            z(  5)=1
         else
            z(  5)=-1
         endif
      endif

!& algeq                                             ! LVRT
      eqtyp( 61)=0

!& timer5
      eqtyp( 62)=0
      eqtyp( 63)=0
      z(  6)=-1
      x(102)=0.

!& algeq
      eqtyp( 64)=0

!& hyst
      eqtyp( 65)=0
      if(x( 62)>1.1)then
         z(  7)=1
      elseif(x( 62)<0.9)then
         z(  7)=-1
      else
         if(1.>= 0.)then
            z(  7)=1
         else
            z(  7)=-1
         endif
      endif

!& algeq                         ! status variable that can switch the entire unit on or off
      eqtyp( 66)=0

!& algeq
      eqtyp( 67)=0

!& algeq
      eqtyp( 68)=0

!& swsign
      eqtyp( 69)=0
      if(x( 83)>=0.)then
         z(  8)=1
      else
         z(  8)=2
      endif

!& algeq                     ! switch support on and off
      eqtyp( 70)=0

!& algeq
      eqtyp( 71)=0

!& swsign
      eqtyp( 72)=0
      if(x( 86)>=0.)then
         z(  9)=1
      else
         z(  9)=2
      endif

!& algeq                     ! underfrequency protection
      eqtyp( 73)=0

!& swsign
      eqtyp( 74)=0
      if(x( 63)>=0.)then
         z( 10)=1
      else
         z( 10)=2
      endif

!& hyst
      eqtyp( 75)=0
      if(x( 65)>1.1)then
         z( 11)=1
      elseif(x( 65)<0.9)then
         z( 11)=-1
      else
         if(1.>= 0.)then
            z( 11)=1
         else
            z( 11)=-1
         endif
      endif

!& algeq                 !  overfrequency protection
      eqtyp( 76)=0

!& swsign
      eqtyp( 77)=0
      if(x( 66)>=0.)then
         z( 12)=1
      else
         z( 12)=2
      endif

!& hyst
      eqtyp( 78)=0
      if(x( 68)>1.1)then
         z( 13)=1
      elseif(x( 68)<0.9)then
         z( 13)=-1
      else
         if(1.>= 0.)then
            z( 13)=1
         else
            z( 13)=-1
         endif
      endif

!& algeq                ! frequency deviation in Hz
      eqtyp( 79)=0

!& tfder1p               ! Rocof measurement in Hz/s
      x(103)=x( 23)
      eqtyp( 80)=103
      tc( 80)=prm( 22)
      eqtyp( 81)=0

!& abs
      eqtyp( 82)=0
      if(x( 69)>0. )then
         z( 14)=1
      else
         z( 14)=-1
      endif

!& algeq              ! Rocof protection
      eqtyp( 83)=0

!& swsign
      eqtyp( 84)=0
      if(x( 71)>=0.)then
         z( 15)=1
      else
         z( 15)=2
      endif

!& hyst
      eqtyp( 85)=0
      if(x( 72)>1.1)then
         z( 16)=1
      elseif(x( 72)<0.9)then
         z( 16)=-1
      else
         if(1.>= 0.)then
            z( 16)=1
         else
            z( 16)=-1
         endif
      endif

!& db            ! rocof deadband in pu
      eqtyp( 86)=0
      if(x( 69)>prm( 34))then
         z( 17)=1
      elseif(x( 69)<prm( 35))then
         z( 17)=-1
      else
         z( 17)=0
      endif

!& algeq         ! Rocof proportional control
      eqtyp( 87)=0

!& pwlin4            ! limit active power during undervoltage
      eqtyp( 88)=0
      if(x( 10)<0)then
         z( 18)=1
      elseif(x( 10)>=1.5)then
         z( 18)=   3
      elseif(0<=x( 10) .and. x( 10)<0.9)then
         z( 18)=  1
      elseif(0.9<=x( 10) .and. x( 10)<0.93)then
         z( 18)=  2
      elseif(0.93<=x( 10) .and. x( 10)<1.5)then
         z( 18)=  3
      endif

!& algeq
      eqtyp( 89)=0

!& tf1p2lim
      if(prm( 64)< 0.001)then
         prm( 64)=0.d0
         prm( 24)=-huge(0.d0)
         prm( 25)= huge(0.d0)
         prm( 68)=-huge(0.d0)
         prm( 67)= huge(0.d0)
      endif
      if(1*x( 31)-x( 30)>prm( 67)*prm( 64))then
         z( 19)=1
      elseif(1*x( 31)-x( 30)<prm( 68)*prm( 64))then
         z( 19)=-1
      else
         z( 19)=0
      endif
      eqtyp( 90)=0
      if(x( 30)>prm( 25))then
         z( 20)=1
         eqtyp( 91)=0
      elseif(x( 30)<prm( 24))then
         z( 20)=-1
         eqtyp( 91)=0
      else
         z( 20)=0
         eqtyp( 91)= 30
      endif
      tc( 91)=prm( 64)

!& algeq         ! Frequency droop control
      eqtyp( 92)=0

!& db            ! frequency deadband in pu
      eqtyp( 93)=0
      if(x( 75)>prm( 29))then
         z( 21)=1
      elseif(x( 75)<prm( 28))then
         z( 21)=-1
      else
         z( 21)=0
      endif

!& algeq         ! compute unlimited power change during overfrequency
      eqtyp( 94)=0

!& lim           ! limit power change
      eqtyp( 95)=0
      if(x( 77)>(prm( 25)-prm( 74)))then
         z( 22)=1
      elseif(x( 77)<0.0000000001)then
         z( 22)=-1
      else
         z( 22)=0
      endif

!& algeq         ! compute unlimited power change during underfrequency
      eqtyp( 96)=0

!& lim           ! limit power change
      eqtyp( 97)=0
      if(x( 79)>(-0.00000001))then
         z( 23)=1
      elseif(x( 79)<(-prm( 74)))then
         z( 23)=-1
      else
         z( 23)=0
      endif

!& min1v1c 	! sustained droop
      eqtyp( 98)=0
      if(x( 80)<prm( 91))then
         z( 24)=1
      else
         z( 24)=2
      endif

!& max1v1c 	! sustained droop
      eqtyp( 99)=0
      if(x( 78)<prm( 90))then
         z( 25)=1
      else
         z( 25)=2
      endif

!& algeq
      eqtyp(100)=0

!& algeq   ! update power output
      eqtyp(101)=0

!& algeq
      eqtyp(102)=0

!& algeq
      eqtyp(103)=0

!& algeq
      eqtyp(104)=0

!........................................................................................
   case (evaluate_eqs)

!& algeq                                             ! voltage magnitude
      f(  1)=dsqrt(vx**2+vy**2) - x(  7)

!& tf1p
      f(  2)=(-x( 10)+1.*x(  7))

!& tf1p
      f(  3)=(-x(  8)+1.*vx    )

!& tf1p
      f(  4)=(-x(  9)+1.*vy    )

!& algeq                                             ! voltage alignment
      f(  5)=-x(  3) + x(  8)*cos(x(  5))+x(  9)*sin(x(  5))

!& algeq
      f(  6)=-x(  4) - x(  8)*sin(x(  5))+x(  9)*cos(x(  5))

!& algeq                                             ! compute ix
      f(  7)=-x(  1) + (-x( 56)*cos(x(  5))-x( 57)*sin(x(  5)))*prm(  1)/prm( 42)

!& algeq                                             ! compute iy
      f(  8)=-x(  2) + (-x( 56)*sin(x(  5))+x( 57)*cos(x(  5)))*prm(  1)/prm( 42)

!& algeq
      f(  9)=-x( 56) + x( 11)*x( 82)

!& algeq
      f( 10)=-x( 57) + x( 13)*x( 82)

!& algeq                                             ! compute powers
      f( 11)=-x( 15)*prm( 42)/prm(  1) -x( 17)                            ! + x(  1)*vx+x(  2)*vy

!& algeq
      f( 12)=-x( 18)*prm( 42)/prm(  1) - x( 19)                           ! -vx*x(  2) + vy*x(  1)

!& algeq                                             ! compute powers
      f( 13)=-x( 17) + x(  3)*x( 56) + x(  4)*x( 57)                              ! - x( 15)*prm( 42)/prm(  1)

!& algeq
      f( 14)=-x( 19) + x(  3)*x( 57) - x(  4)*x( 56)                              ! - x( 18)*prm( 42)/prm(  1)

!& int                                               ! voltage alignment angle, PLL angle
      if (1.d0< 0.005)then
         f( 15)=x( 22)-x(  5)
      else
         f( 15)=x( 22)
      endif

!& pictl                                             ! PLL
      f( 16)=0.1/(prm(  2)*0.001)**2                                                                                                                                                                                                                                                                                     *x(  4)
      f( 17)=0.5/(prm(  2)*0.001)                                                                                                                                                                                                                                                                                        *x(  4)+x( 96)-x( 24)

!& algeq                                             ! frequency deviation
      f( 18)=x( 21) - x( 24) + omega*prm( 60)

!& algeq
      f( 19)=x( 22) -x( 21)*x( 50)

!& algeq                                             ! compute and filter frequency
      f( 20)=-x( 26)+x( 24)/prm( 60)*fnom

!& tf1p
      f( 21)=(-x( 25)+1.*x( 26))

!& algeq                                             ! PLL freezing
      f( 22)=-x( 51) + x( 10)-prm( 45)

!& swsign
      select case (z(  1))
         case(1)
            f( 23)=x( 50)-x( 88)
         case(2)
            f( 23)=x( 50)-x( 89)
      end select

!& algeq
      f( 24)=-x(  6) + prm( 43)

!& algeq                                             ! DC voltage control
      f( 25)=-x( 28) + x(  6) - x( 27)

!& pictl
      f( 26)=prm( 48)                                                                                                                                                                                                                                                                                                    *x( 28)
      f( 27)=prm( 47)                                                                                                                                                                                                                                                                                                    *x( 28)+x( 97)-x( 29)

!& algeq                                             ! p-axis current control
      f( 28)=-x( 12) + x( 29)*x( 82) -x( 11)

!& pictl
      f( 29)=prm( 50)                                                                                                                                                                                                                                                                                                    *x( 12)
      f( 30)=prm( 49)                                                                                                                                                                                                                                                                                                    *x( 12)+x( 98)-x( 33)

!& algeq                                             ! q-axis current control
      f( 31)=-x( 32)                                           ! + x( 29)*dsqrt(1-prm( 44))*x( 82)

!& algeq
      f( 32)=-x( 14) + x( 32)*x( 82) -x( 13)

!& pictl
      f( 33)=prm( 50)                                                                                                                                                                                                                                                                                                    *x( 14)
      f( 34)=prm( 49)                                                                                                                                                                                                                                                                                                    *x( 14)+x( 99)-x( 34)

!& algeq                                             ! md
      f( 35)=-x( 35) + (-x( 33) + prm(  8)/max(1.d-3,prm( 43))*x( 25)/fnom*x( 13))

!& algeq                                             ! mq
      f( 36)=-x( 36) + (-x( 34) - prm(  8)/max(1.d-3,prm( 43))*x( 25)/fnom*x( 11))

!& algeq                                             ! voltage over d-axis terminal impedance
      f( 37)=-x( 37) + x(  3) - x( 35) * x( 27) + prm(  8)*omega*x( 13)

!& algeq                                             ! voltage over q-axis terminal impedance
      f( 38)=-x( 38) + x(  4) - x( 36) * x( 27) - prm(  8)*omega*x( 11)

!& tf1p                                              ! d-axis current
      f( 39)=(-x( 11)+1/prm(  7)*x( 37))

!& tf1p                                              ! q-axis current
      f( 40)=(-x( 13)+1/prm(  7)*x( 38))

!& algeq                                             ! DC link current
      f( 41)=-x( 39) + x( 82)*(x( 47)*prm( 54)*x( 45) + prm(  9)*x( 45)**2) / max(1.d-3,x( 27))

!& algeq                                             ! DC link
      f( 42)=-x( 40)+x( 35)*x( 11)+x( 36)*x( 13)-x( 39)

!& int                                               ! DC link voltage
      if (prm( 52)/prm( 60)< 0.005)then
         f( 43)=x( 40)-x( 27)
      else
         f( 43)=x( 40)
      endif

!& algeq
      f( 44)=- x( 95)  + prm( 39) * x( 30) + (1-prm( 39)) * prm( 25)

!& limvb                                              ! power limiter
      select case (z(  2))
         case(0)
            f( 45)=x( 20)-x( 58)
         case(-1)
            f( 45)=x( 20)-x( 74)
         case(1)
            f( 45)=x( 20)-x( 95)
      end select

!& algeq                                             ! power mismatch
      f( 46)=-x( 16) + x( 20)-x( 17)

!& pictl                                             ! power control
      f( 47)=prm(  4)                                                                                                                                                                                                                                                                                                    *x( 16)
      f( 48)=prm(  3)                                                                                                                                                                                                                                                                                                    *x( 16)+x(100)-x( 41)

!& lim                                               ! limit speed control input
      select case (z(  3))
         case(0)
            f( 49)=x( 43)-x( 41)
         case(-1)
            f( 49)=x( 43)-prm( 57)
         case(1)
            f( 49)=x( 43)-prm( 58)
      end select

!& algeq                                             ! speed control input
      f( 50)=-x( 46) + prm( 53)*(x( 82)*x( 42)-x( 47))

!& pictl                                             ! speed control
      f( 51)=prm(  6)                                                                                                                                                                                                                                                                                                    *x( 46)
      f( 52)=prm(  5)                                                                                                                                                                                                                                                                                                    *x( 46)+x(101)-x( 44)

!& tf1p                                              ! motor current control
      f( 53)=(-x( 45)+1*x( 44))

!& algeq                                             ! torque equations
      f( 54)=-x( 48) + prm( 54)*x( 45)

!& algeq
      f( 55)=-x( 49) + x( 48)-x( 82)*prm( 87)

!& tf1p                                              ! motor inertia
      f( 56)=(-x( 47)+1/prm( 11)*x( 49))

!& algeq
      f( 57)=x( 52) - x( 10) +prm( 12)

!& pwlin4                                            ! Overvoltage Protection
      select case (z(  4))
         case (  1)
            f( 58)=0.+ ( (0.-0.)*(x( 52)-(-999))/(0.-(-999)) ) -x( 53)
         case (  2)
            f( 58)=0.+ ( (1.-0.)*(x( 52)-0.)/(0.-0.) ) -x( 53)
         case (  3)
            f( 58)=1.+ ( (1.-1.)*(x( 52)-0.)/(999-0.) ) -x( 53)
      end select

!& algeq
      f( 59)=x( 54) -1 + x( 53)

!& hyst
      if(z(  5) == 1)then
         f( 60)=x( 55)-1.-(1.-1.)*(x( 54)-1.1)/(1.1-0.9)
      else
         f( 60)=x( 55)-0.-(0.-0.)*(x( 54)-0.9)/(1.1-0.9)
      endif

!& algeq                                             ! LVRT
      f( 61)=x( 10) + x( 59)

!& timer5
      select case (z(  6))
         case (-1)
            f( 62)=x( 60)
            f( 63)=x(102)
         case (0)
            f( 62)=x( 60)
            f( 63)= 1.
         case (1)
            f( 62)=x( 60)-1.
            f( 63)= 0.
      end select

!& algeq
      f( 64)=x( 62) -1 + x( 60)

!& hyst
      if(z(  7) == 1)then
         f( 65)=x( 61)-1.-(1.-1.)*(x( 62)-1.1)/(1.1-0.9)
      else
         f( 65)=x( 61)-0.-(0.-0.)*(x( 62)-0.9)/(1.1-0.9)
      endif

!& algeq                         ! status variable that can switch the entire unit on or off
      f( 66)=x( 84) - x( 55)*x( 61)*x( 64)*x( 67)*x( 73)

!& algeq
      f( 67)=x( 83) - prm( 40)

!& algeq
      f( 68)=x( 85) - 1

!& swsign
      select case (z(  8))
         case(1)
            f( 69)=x( 82)-x( 84)
         case(2)
            f( 69)=x( 82)-x( 85)
      end select

!& algeq                     ! switch support on and off
      f( 70)=x( 86) - prm( 41)

!& algeq
      f( 71)=x( 87) - prm( 85)

!& swsign
      select case (z(  9))
         case(1)
            f( 72)=x( 42)-x( 43)
         case(2)
            f( 72)=x( 42)-x( 87)
      end select

!& algeq                     ! underfrequency protection
      f( 73)=x( 63) - x( 25) + prm( 20)

!& swsign
      select case (z( 10))
         case(1)
            f( 74)=x( 65)-x( 88)
         case(2)
            f( 74)=x( 65)-x( 89)
      end select

!& hyst
      if(z( 11) == 1)then
         f( 75)=x( 64)-1.-(1.-1.)*(x( 65)-1.1)/(1.1-0.9)
      else
         f( 75)=x( 64)-0.-(0.-0.)*(x( 65)-0.9)/(1.1-0.9)
      endif

!& algeq                 !  overfrequency protection
      f( 76)=x( 66) - prm( 21) + x( 25)

!& swsign
      select case (z( 12))
         case(1)
            f( 77)=x( 68)-x( 88)
         case(2)
            f( 77)=x( 68)-x( 89)
      end select

!& hyst
      if(z( 13) == 1)then
         f( 78)=x( 67)-1.-(1.-1.)*(x( 68)-1.1)/(1.1-0.9)
      else
         f( 78)=x( 67)-0.-(0.-0.)*(x( 68)-0.9)/(1.1-0.9)
      endif

!& algeq                ! frequency deviation in Hz
      f( 79)=-x( 23) + x( 25)-fnom

!& tfder1p               ! Rocof measurement in Hz/s
      f( 80)=-x(103)+x( 23)
      if (prm( 22)< 0.005)then
         f( 81)=1/prm( 22)*x( 23)-x( 69)
      else
         f( 81)=1/prm( 22)*(x( 23)-x(103))-x( 69)
      endif

!& abs
      if(z( 14) == 1 )then
         f( 82)=x( 70)-x( 69)
      else
         f( 82)=x( 70)+x( 69)
      endif

!& algeq              ! Rocof protection
      f( 83)=-x( 71) +prm( 23) -x( 70)

!& swsign
      select case (z( 15))
         case(1)
            f( 84)=x( 72)-x( 88)
         case(2)
            f( 84)=x( 72)-x( 89)
      end select

!& hyst
      if(z( 16) == 1)then
         f( 85)=x( 73)-1.-(1.-1.)*(x( 72)-1.1)/(1.1-0.9)
      else
         f( 85)=x( 73)-0.-(0.-0.)*(x( 72)-0.9)/(1.1-0.9)
      endif

!& db            ! rocof deadband in pu
      select case (z( 17))
         case(0)
            f( 86)=x( 94)
         case(-1)
            f( 86)=x( 94)-0.-1.*(x( 69)-prm( 35))
         case(1)
            f( 86)=x( 94)-0.-1.*(x( 69)-prm( 34))
      end select

!& algeq         ! Rocof proportional control
      f( 87)=-x( 92) +prm( 38)*prm( 92)*x( 94)

!& pwlin4            ! limit active power during undervoltage
      select case (z( 18))
         case (  1)
            f( 88)=prm( 24)+ ( (prm( 24)-prm( 24))*(x( 10)-0)/(0.9-0) ) -x( 31)
         case (  2)
            f( 88)=prm( 24)+ ( (prm( 25)-prm( 24))*(x( 10)-0.9)/(0.93-0.9) ) -x( 31)
         case (  3)
            f( 88)=prm( 25)+ ( (prm( 25)-prm( 25))*(x( 10)-0.93)/(1.5-0.93) ) -x( 31)
      end select

!& algeq
      f( 89)=x( 74)+1e-9

!& tf1p2lim
      select case (z( 19))
         case(0)
            f( 90)=x(104)-1*x( 31)+x( 30)
         case(1)
            f( 90)=x(104)-prm( 67)*prm( 64)
         case(-1)
            f( 90)=x(104)-prm( 68)*prm( 64)
      end select
      select case (z( 20))
         case(0)
            f( 91)=x(104)
         case(1)
            f( 91)=x( 30)-prm( 25)
         case(-1)
            f( 91)=x( 30)-prm( 24)
      end select

!& algeq         ! Frequency droop control
      f( 92)=-x( 75) + x( 25)/fnom-1.d0

!& db            ! frequency deadband in pu
      select case (z( 21))
         case(0)
            f( 93)=x( 76)
         case(-1)
            f( 93)=x( 76)-0.-1.*(x( 75)-prm( 28))
         case(1)
            f( 93)=x( 76)-0.-1.*(x( 75)-prm( 29))
      end select

!& algeq         ! compute unlimited power change during overfrequency
      f( 94)=-x( 77) + x( 76)*prm( 88)

!& lim           ! limit power change
      select case (z( 22))
         case(0)
            f( 95)=x( 78)-x( 77)
         case(-1)
            f( 95)=x( 78)-0.0000000001
         case(1)
            f( 95)=x( 78)-(prm( 25)-prm( 74))
      end select

!& algeq         ! compute unlimited power change during underfrequency
      f( 96)=-x( 79) + x( 76)*prm( 89)

!& lim           ! limit power change
      select case (z( 23))
         case(0)
            f( 97)=x( 80)-x( 79)
         case(-1)
            f( 97)=x( 80)-(-prm( 74))
         case(1)
            f( 97)=x( 80)-(-0.00000001)
      end select

!& min1v1c 	! sustained droop
      select case (z( 24))
         case(1)
            f( 98)=x( 80)-x( 91)
         case(2)
            f( 98)=prm( 91)-x( 91)
      end select

!& max1v1c 	! sustained droop
      select case (z( 25))
         case(1)
            f( 99)=prm( 90)-x( 90)
         case(2)
            f( 99)=x( 78)-x( 90)
      end select

!& algeq
      f(100)=x( 93) - prm( 37)*x( 90) - (1-prm( 37))*x( 78) - prm( 37)*x( 91) - (1-prm( 37))*x( 80)

!& algeq   ! update power output
      f(101)=x( 81) - x( 93) - x( 92)

!& algeq
      f(102)=- x( 58) +  x( 82)*(prm( 74) +x( 81))

!& algeq
      f(103)=x( 88) -1

!& algeq
      f(104)=x( 89)

!........................................................................................
   case (update_disc)

!& algeq                                             ! voltage magnitude

!& tf1p

!& tf1p

!& tf1p

!& algeq                                             ! voltage alignment

!& algeq

!& algeq                                             ! compute ix

!& algeq                                             ! compute iy

!& algeq

!& algeq

!& algeq                                             ! compute powers

!& algeq

!& algeq                                             ! compute powers

!& algeq

!& int                                               ! voltage alignment angle, PLL angle

!& pictl                                             ! PLL

!& algeq                                             ! frequency deviation

!& algeq

!& algeq                                             ! compute and filter frequency

!& tf1p

!& algeq                                             ! PLL freezing

!& swsign
      select case (z(  1))
         case(1)
            if(x( 51)<0.)then
               z(  1)=2
            endif
         case(2)
            if(x( 51)>=0.)then
               z(  1)=1
            endif
      end select

!& algeq

!& algeq                                             ! DC voltage control

!& pictl

!& algeq                                             ! p-axis current control

!& pictl

!& algeq                                             ! q-axis current control

!& algeq

!& pictl

!& algeq                                             ! md

!& algeq                                             ! mq

!& algeq                                             ! voltage over d-axis terminal impedance

!& algeq                                             ! voltage over q-axis terminal impedance

!& tf1p                                              ! d-axis current

!& tf1p                                              ! q-axis current

!& algeq                                             ! DC link current

!& algeq                                             ! DC link

!& int                                               ! DC link voltage

!& algeq

!& limvb                                              ! power limiter
      select case (z(  2))
         case(0)
            if(x( 58)>x( 95))then
               z(  2)=1
            elseif(x( 58)<x( 74))then
               z(  2)=-1
            endif
         case(-1)
            if(x( 58)>x( 74))then
               z(  2)=0
            endif
         case(1)
            if(x( 58)<x( 95))then
               z(  2)=0
            endif
      end select

!& algeq                                             ! power mismatch

!& pictl                                             ! power control

!& lim                                               ! limit speed control input
      select case (z(  3))
         case(0)
            if(x( 41)>prm( 58))then
               z(  3)=1
            elseif(x( 41)<prm( 57))then
               z(  3)=-1
            endif
         case(-1)
            if(x( 41)>prm( 57))then
               z(  3)=0
            endif
         case(1)
            if(x( 41)<prm( 58))then
               z(  3)=0
            endif
      end select

!& algeq                                             ! speed control input

!& pictl                                             ! speed control

!& tf1p                                              ! motor current control

!& algeq                                             ! torque equations

!& algeq

!& tf1p                                              ! motor inertia

!& algeq

!& pwlin4                                            ! Overvoltage Protection
      if(x( 52)<(-999))then
         z(  4)=1
      elseif(x( 52)>=999)then
         z(  4)=  3
      elseif((-999)<=x( 52) .and. x( 52)<0.)then
         z(  4)=  1
      elseif(0.<=x( 52) .and. x( 52)<0.)then
         z(  4)=  2
      elseif(0.<=x( 52) .and. x( 52)<999)then
         z(  4)=  3
      endif

!& algeq

!& hyst
      if (z(  5) == -1)then
         if(x( 54)>1.1)then
            z(  5)=1
         endif
      else
         if(x( 54)<0.9)then
            z(  5)=-1
         endif
      endif

!& algeq                                             ! LVRT

!& timer5
      if(z(  6) == -1)then
         if(x( 59) >= (-prm( 15)))then
            z(  6)=0
            eqtyp( 63)=102
         endif
      else
         if(x( 59) < (-prm( 15)))then
            z(  6)=-1
            eqtyp( 63)=0
         endif
      endif
      if(z(  6) == 0)then
         if(x( 59) > (-(prm( 26)*prm( 13) + (1-prm( 26))*prm( 19))))then
            if(x(102) > 0.)then
               z(  6)=1
            endif
         elseif(x( 59) > (-(prm( 26)*prm( 13) + (1-prm( 26))*prm( 19))))then
            if(x(102) > prm( 16)+(0.-prm( 16))*(x( 59)-(-(prm( 26)*prm( 13) + (1-prm( 26))*prm( 19))))/((-(prm( 26)*prm( 13) + (1-prm( 26))*prm( 19)))-(-(prm( 26)*prm( 13) + (1-prm( 26))*prm( 19)))))then
               z(  6)=1
            endif
         elseif(x( 59) > (-(prm( 26)*prm( 14) + (1-prm( 26))*prm( 19))))then
            if(x(102) > prm( 16)+(prm( 16)-prm( 16))*(x( 59)-(-(prm( 26)*prm( 14) + (1-prm( 26))*prm( 19))))/((-(prm( 26)*prm( 13) + (1-prm( 26))*prm( 19)))-(-(prm( 26)*prm( 14) + (1-prm( 26))*prm( 19)))))then
               z(  6)=1
            endif
         elseif(x( 59) > (-(prm( 26)*prm( 14) + (1-prm( 26))*prm( 19))))then
            if(x(102) > prm( 18)+(prm( 16)-prm( 18))*(x( 59)-(-(prm( 26)*prm( 14) + (1-prm( 26))*prm( 19))))/((-(prm( 26)*prm( 14) + (1-prm( 26))*prm( 19)))-(-(prm( 26)*prm( 14) + (1-prm( 26))*prm( 19)))))then
               z(  6)=1
            endif
         elseif(x( 59) > (-prm( 15)))then
            if(x(102) > prm( 17)+(prm( 18)-prm( 17))*(x( 59)-(-prm( 15)))/((-(prm( 26)*prm( 14) + (1-prm( 26))*prm( 19)))-(-prm( 15))))then
               z(  6)=1
            endif
         endif
      endif

!& algeq

!& hyst
      if (z(  7) == -1)then
         if(x( 62)>1.1)then
            z(  7)=1
         endif
      else
         if(x( 62)<0.9)then
            z(  7)=-1
         endif
      endif

!& algeq                         ! status variable that can switch the entire unit on or off

!& algeq

!& algeq

!& swsign
      select case (z(  8))
         case(1)
            if(x( 83)<0.)then
               z(  8)=2
            endif
         case(2)
            if(x( 83)>=0.)then
               z(  8)=1
            endif
      end select

!& algeq                     ! switch support on and off

!& algeq

!& swsign
      select case (z(  9))
         case(1)
            if(x( 86)<0.)then
               z(  9)=2
            endif
         case(2)
            if(x( 86)>=0.)then
               z(  9)=1
            endif
      end select

!& algeq                     ! underfrequency protection

!& swsign
      select case (z( 10))
         case(1)
            if(x( 63)<0.)then
               z( 10)=2
            endif
         case(2)
            if(x( 63)>=0.)then
               z( 10)=1
            endif
      end select

!& hyst
      if (z( 11) == -1)then
         if(x( 65)>1.1)then
            z( 11)=1
         endif
      else
         if(x( 65)<0.9)then
            z( 11)=-1
         endif
      endif

!& algeq                 !  overfrequency protection

!& swsign
      select case (z( 12))
         case(1)
            if(x( 66)<0.)then
               z( 12)=2
            endif
         case(2)
            if(x( 66)>=0.)then
               z( 12)=1
            endif
      end select

!& hyst
      if (z( 13) == -1)then
         if(x( 68)>1.1)then
            z( 13)=1
         endif
      else
         if(x( 68)<0.9)then
            z( 13)=-1
         endif
      endif

!& algeq                ! frequency deviation in Hz

!& tfder1p               ! Rocof measurement in Hz/s

!& abs
      if (z( 14) == -1 )then
         if(x( 69)> blocktol1 )then
            z( 14)=1
         endif
      else
         if(x( 69)< - blocktol1 )then
            z( 14)=-1
         endif
      endif

!& algeq              ! Rocof protection

!& swsign
      select case (z( 15))
         case(1)
            if(x( 71)<0.)then
               z( 15)=2
            endif
         case(2)
            if(x( 71)>=0.)then
               z( 15)=1
            endif
      end select

!& hyst
      if (z( 16) == -1)then
         if(x( 72)>1.1)then
            z( 16)=1
         endif
      else
         if(x( 72)<0.9)then
            z( 16)=-1
         endif
      endif

!& db            ! rocof deadband in pu
      select case (z( 17))
         case(0)
            if(x( 69)>prm( 34))then
               z( 17)=1
            elseif(x( 69)<prm( 35))then
               z( 17)=-1
            endif
         case(-1)
            if(x( 69)>prm( 35))then
               z( 17)=0
            endif
         case(1)
            if(x( 69)<prm( 34))then
               z( 17)=0
            endif
      end select

!& algeq         ! Rocof proportional control

!& pwlin4            ! limit active power during undervoltage
      if(x( 10)<0)then
         z( 18)=1
      elseif(x( 10)>=1.5)then
         z( 18)=  3
      elseif(0<=x( 10) .and. x( 10)<0.9)then
         z( 18)=  1
      elseif(0.9<=x( 10) .and. x( 10)<0.93)then
         z( 18)=  2
      elseif(0.93<=x( 10) .and. x( 10)<1.5)then
         z( 18)=  3
      endif

!& algeq

!& tf1p2lim
      select case (z( 19))
         case(0)
            if(x(104)>prm( 67)*prm( 64))then
               z( 19)=1
            elseif(x(104)<prm( 68)*prm( 64))then
               z( 19)=-1
            endif
         case(1)
            if(1*x( 31)-x( 30)<prm( 67)*prm( 64))then
               z( 19)= 0
            endif
         case(-1)
            if(1*x( 31)-x( 30)>prm( 68)*prm( 64))then
               z( 19)= 0
            endif
      end select
      select case (z( 20))
         case(0)
            if(x( 30)>prm( 25))then
               z( 20)=1
               eqtyp( 91)=0
            elseif(x( 30)<prm( 24))then
               z( 20)=-1
               eqtyp( 91)=0
            endif
         case(1)
            if (x(104)<0.)then
               z( 20)= 0
               eqtyp( 91)= 30
            endif
         case(-1)
            if(x(104)>0.)then
               z( 20)= 0
               eqtyp( 91)= 30
            endif
      end select

!& algeq         ! Frequency droop control

!& db            ! frequency deadband in pu
      select case (z( 21))
         case(0)
            if(x( 75)>prm( 29))then
               z( 21)=1
            elseif(x( 75)<prm( 28))then
               z( 21)=-1
            endif
         case(-1)
            if(x( 75)>prm( 28))then
               z( 21)=0
            endif
         case(1)
            if(x( 75)<prm( 29))then
               z( 21)=0
            endif
      end select

!& algeq         ! compute unlimited power change during overfrequency

!& lim           ! limit power change
      select case (z( 22))
         case(0)
            if(x( 77)>(prm( 25)-prm( 74)))then
               z( 22)=1
            elseif(x( 77)<0.0000000001)then
               z( 22)=-1
            endif
         case(-1)
            if(x( 77)>0.0000000001)then
               z( 22)=0
            endif
         case(1)
            if(x( 77)<(prm( 25)-prm( 74)))then
               z( 22)=0
            endif
      end select

!& algeq         ! compute unlimited power change during underfrequency

!& lim           ! limit power change
      select case (z( 23))
         case(0)
            if(x( 79)>(-0.00000001))then
               z( 23)=1
            elseif(x( 79)<(-prm( 74)))then
               z( 23)=-1
            endif
         case(-1)
            if(x( 79)>(-prm( 74)))then
               z( 23)=0
            endif
         case(1)
            if(x( 79)<(-0.00000001))then
               z( 23)=0
            endif
      end select

!& min1v1c 	! sustained droop
      select case (z( 24))
         case(1)
            if(x( 80)>prm( 91))then
               z( 24)=2
            endif
         case(2)
            if(prm( 91)>x( 80))then
               z( 24)=1
            endif
      end select

!& max1v1c 	! sustained droop
      select case (z( 25))
         case(1)
            if(x( 78)>prm( 90))then
               z( 25)=2
            endif
         case(2)
            if(prm( 90)>x( 78))then
               z( 25)=1
            endif
      end select

!& algeq

!& algeq   ! update power output

!& algeq

!& algeq

!& algeq
   end select

end subroutine inj_ATL2aa
