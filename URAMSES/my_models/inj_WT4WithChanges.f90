!  MODEL NAME : inj_WT4                 
!  MODEL DESCRIPTION FILE : WT4.txt
!  Data :
!       prm(  1)=  SNOM			!Debe estar en MW
!       prm(  2)=  Rc				!Aqui empiezan los parametros del modelo REPC_A
!       prm(  3)=  Xc
!       prm(  4)=  vcompFlag
!       prm(  5)=  Kc
!       prm(  6)=  Tfltr
!       prm(  7)=  RefFlag
!       prm(  8)=  dbd				!Puede valer 0 o tener un valor positivo
!       prm(  9)=  emax
!       prm( 10)=  emin
!       prm( 11)=  Kp
!       prm( 12)=  Ki
!       prm( 13)=  Qmax
!       prm( 14)=  Qmin
!       prm( 15)=  Tft
!       prm( 16)=  Tfv
!       prm( 17)=  vfrz
!       prm( 18)=  Tp
!       prm( 19)=  fdbd1			!debe ser cero o un numero negativo
!       prm( 20)=  fdbd2			!debe ser cero o un numero positivo
!       prm( 21)=  Ddn
!       prm( 22)=  Dup
!       prm( 23)=  femax
!       prm( 24)=  femin
!       prm( 25)=  kpg
!       prm( 26)=  kig
!       prm( 27)=  Pmax
!       prm( 28)=  Pmin
!       prm( 29)=  Tlag
!       prm( 30)=  FreqFlag		!Escoge si Pref viene dado por el valor inicial o del modelo REPC_A
!       prm( 31)=  Tmesf			!constante para medir frecuencia en un bus
!       prm( 32)=  QextFlag		!Escoge si Qext viene dado por el valor inicial o del modelo REPC_A
!       prm( 33)=  Ht				!Aqui empiezan los parametros del modelo WTGT_A
!       prm( 34)=  Hg
!       prm( 35)=  wo
!       prm( 36)=  Dshaft
!       prm( 37)=  Kshaft
!       prm( 38)=  vdip			!Aqui empiezan los parametros del modelo REEC_A
!       prm( 39)=  vup
!       prm( 40)=  Trv
!       prm( 41)=  vref0
!       prm( 42)=  vref1
!       prm( 43)=  dbd1			!Puede valer 0 o un valor negativo
!       prm( 44)=  dbd2			!Puede valer 0 o un valor positivo
!       prm( 45)=  kqv
!       prm( 46)=  Iqh1
!       prm( 47)=  Iql1
!       prm( 48)=  qmax			! corresponde al Qmax del modelo REEC_A
!       prm( 49)=  qmin			! corresponde al Qmin del modelo REEC_A
!       prm( 50)=  vmax
!       prm( 51)=  vmin
!       prm( 52)=  kqp
!       prm( 53)=  kqi
!       prm( 54)=  kvp
!       prm( 55)=  kvi
!       prm( 56)=  Tiq
!       prm( 57)=  vq1
!       prm( 58)=  Iq1
!       prm( 59)=  vq2
!       prm( 60)=  Iq2
!       prm( 61)=  vq3
!       prm( 62)=  Iq3
!       prm( 63)=  vq4
!       prm( 64)=  Iq4
!       prm( 65)=  vp1
!       prm( 66)=  Ip1
!       prm( 67)=  vp2
!       prm( 68)=  Ip2
!       prm( 69)=  vp3
!       prm( 70)=  Ip3
!       prm( 71)=  vp4
!       prm( 72)=  Ip4
!       prm( 73)=  dPmax
!       prm( 74)=  dPmin
!       prm( 75)=  pmax			! corresponde al Pmax del modelo REEC_A
!       prm( 76)=  pmin			! corresponde al Pmin del modelo REEC_A
!       prm( 77)=  Tpord
!       prm( 78)=  Imax
!       prm( 79)=  Thld
!       prm( 80)=  Thld2
!       prm( 81)=  Iqfrz
!       prm( 82)=  PFFlag
!       prm( 83)=  vFlag
!       prm( 84)=  QFlag
!       prm( 85)=  PQFlag
!       prm( 86)=  PFlag
!       prm( 87)=  Iqrmax			!Aqui empiezan los parametros del modelo REGC_A
!       prm( 88)=  Iqrmin
!       prm( 89)=  Tg
!       prm( 90)=  vtmax			!Correspone a volim que sale en el diagrama
!       prm( 91)=  accel			!Corresponde a khv que sale en el diagrama
!       prm( 92)=  QMIN			!Corresponde a Iolim que sale en el diagrama
!       prm( 93)=  lvpnt0
!       prm( 94)=  lvpnt1
!       prm( 95)=  Brkpt
!       prm( 96)=  zerox
!       prm( 97)=  Lvpl1
!       prm( 98)=  Lvplsw
!       prm( 99)=  rrpwr
!       prm(100)=  vPLL			!Aquí empiezan los parámetros del modelo del PLL
!       prm(101)=  kpPLL
!       prm(102)=  kiPLL
!       prm(103)=  wrefPLL
!  Parameters :
!       prm(104)=  Qextini  La definicion de este parametro se debe cambiar directamente en el f90. Se debe definir justo despues de inicializar Qext y debe tomar este valor inicial de Qext.
!       prm(105)=  Prefini  La definicion de este parametro se debe cambiar directamente en el f90. Se debe definir justo despues de inicializar Pref y debe tomar este valor inicial de Pref.
!       prm(106)=  vref  La definicion de este parametro se debe cambiar directamente en el f90. Se debe definir justo despues de inicializar Y2 y debe tomar este valor inicial de Y2.
!       prm(107)=  vto  
!       prm(108)=  Peo  
!       prm(109)=  Qgeno  
!       prm(110)=  vconxo  Aqui empiezan parametros de REPC_A
!       prm(111)=  vconyo  
!       prm(112)=  vcono  
!       prm(113)=  Qref  
!       prm(114)=  Plantpref  
!       prm(115)=  Freqref  
!       prm(116)=  Tmo  Aqui empiezan parametros de WTGT_A
!       prm(117)=  pfaref  Aqui empiezan parametros de REEC_A
!       prm(118)=  vq1Left  
!       prm(119)=  vq4Right  
!       prm(120)=  vp1Left  
!       prm(121)=  vp4Right  
!       prm(122)=  BrkptRight  Aqui empiezan parametros de REGC_A
!       prm(123)=  lvpnt0Left  
!       prm(124)=  lvpnt1Rght  
!       prm(125)=  IqrminF  
!       prm(126)=  IqrmaxF  
!       prm(127)=  vx0  Aqui empiezan parametros del PLL
!       prm(128)=  vy0  
!       prm(129)=  PLLPhsAgl0  
!       prm(130)=  UPlim  
!       prm(131)=  DOWNlim  
!  Output states :
!       x(  1)=  ix           real component of current
!       x(  2)=  iy           imaginary component of current
!  Internal states defined by user :
!       x(  3)=  one                   
!       x(  4)=  zero                  
!       x(  5)=  vt                    
!       x(  6)=  Pe                    
!       x(  7)=  Qgen                  
!       x(  8)=  Iqf                   Aqui empiezan estados de REGC_A
!       x(  9)=  Ipf                   
!       x( 10)=  x56                   
!       x( 11)=  Q3                    
!       x( 12)=  Q2                    
!       x( 13)=  x53                   
!       x( 14)=  x54                   
!       x( 15)=  x55                   
!       x( 16)=  Q1                    
!       x( 17)=  Iq                    
!       x( 18)=  Iqcmd                 
!       x( 19)=  x57                   
!       x( 20)=  Ip                    
!       x( 21)=  Z26                   
!       x( 22)=  Z25                   
!       x( 23)=  Ipcmd                 
!       x( 24)=  x58                   
!       x( 25)=  Lvplswi               
!       x( 26)=  x59                   
!       x( 27)=  LimG                  
!       x( 28)=  LimP                  
!       x( 29)=  LVPL                  
!       x( 30)=  FlagLVPL              
!       x( 31)=  FlagVolim             
!       x( 32)=  DeltaVPLLFlag         Aquí empiezan los estados del PLL
!       x( 33)=  FPLL                  
!       x( 34)=  vxfilt                
!       x( 35)=  vyfilt                
!       x( 36)=  vq                    
!       x( 37)=  wPLL                  
!       x( 38)=  x60                   
!       x( 39)=  PLLPhaseAngle         
!       x( 40)=  Deltawt               Aquí empiezan los estados del WTGT_A
!       x( 41)=  Deltawg               
!       x( 42)=  Deltaw                
!       x( 43)=  TDs                   
!       x( 44)=  wg                    
!       x( 45)=  TK                    
!       x( 46)=  Tnt                   
!       x( 47)=  Te                    
!       x( 48)=  Tng                   
!       x( 49)=  DeltaTheta            
!       x( 50)=  vtfilt                Aqui empiezan estados de REEC_A
!       x( 51)=  C                     
!       x( 52)=  IMAX                  
!       x( 53)=  A                     
!       x( 54)=  D                     
!       x( 55)=  B                     
!       x( 56)=  VDL1                  
!       x( 57)=  VDL2                  
!       x( 58)=  Iqmax                 
!       x( 59)=  Iqmin                 
!       x( 60)=  Ipmaxprev             
!       x( 61)=  Ipmax                 
!       x( 62)=  Ipmin                 
!       x( 63)=  x47                   
!       x( 64)=  x44                   
!       x( 65)=  Pord                  
!       x( 66)=  x23                   
!       x( 67)=  x24                   
!       x( 68)=  x45                   
!       x( 69)=  Z20                   
!       x( 70)=  Z21                   
!       x( 71)=  Pref                  
!       x( 72)=  x46                   
!       x( 73)=  x43                   
!       x( 74)=  x26                   
!       x( 75)=  verr                  
!       x( 76)=  Iqv                   
!       x( 77)=  x22                   
!       x( 78)=  Iqinj                 
!       x( 79)=  x42                   
!       x( 80)=  x38                   
!       x( 81)=  x52                   
!       x( 82)=  x37                   
!       x( 83)=  x36                   
!       x( 84)=  x35                   
!       x( 85)=  x34                   
!       x( 86)=  x33                   
!       x( 87)=  x51                   
!       x( 88)=  x32                   
!       x( 89)=  x31                   
!       x( 90)=  x30                   
!       x( 91)=  x29                   
!       x( 92)=  x25                   
!       x( 93)=  x39                   
!       x( 94)=  x40                   
!       x( 95)=  x41                   
!       x( 96)=  x28                   
!       x( 97)=  x27                   
!       x( 98)=  Qext                  
!       x( 99)=  voltageDip            
!       x(100)=  FlagDip               
!       x(101)=  FlagUp                
!       x(102)=  Fdip                  
!       x(103)=  Fup                   
!       x(104)=  PFFlagi               
!       x(105)=  vFlagi                
!       x(106)=  QFlagi                
!       x(107)=  PQFlagi               
!       x(108)=  PFlagi                
!       x(109)=  MultThld              
!       x(110)=  MultThld2             
!       x(111)=  tThld                 
!       x(112)=  tThld2                
!       x(113)=  FThld2                
!       x(114)=  Position              
!       x(115)=  x21                   
!       x(116)=  Y21                   Aqui empiezan estados de REPC_A
!       x(117)=  Y1                    
!       x(118)=  Y2                    
!       x(119)=  Y22                   
!       x(120)=  Y3                    
!       x(121)=  Y23                   
!       x(122)=  Y4                    
!       x(123)=  Y5                    
!       x(124)=  Y6                    
!       x(125)=  Y24                   
!       x(126)=  Y7                    
!       x(127)=  Y26                   
!       x(128)=  Y8                    
!       x(129)=  Y25                   
!       x(130)=  QextiniE              
!       x(131)=  Y9                    
!       x(132)=  Freq                  
!       x(133)=  Y10                   
!       x(134)=  Y11                   
!       x(135)=  Y12                   
!       x(136)=  Y13                   
!       x(137)=  Y14                   
!       x(138)=  Y15                   
!       x(139)=  Y16                   
!       x(140)=  Y17                   
!       x(141)=  Y18                   
!       x(142)=  Y27                   
!       x(143)=  Y19                   
!       x(144)=  Y20                   
!       x(145)=  PrefiniE              
!       x(146)=  vconx                 
!       x(147)=  vcony                 
!       x(148)=  vcon                  
!       x(149)=  Qbranch               
!       x(150)=  Pbranch               
!       x(151)=  vcompFlagi            
!       x(152)=  RefFlagi              
!       x(153)=  FreqFlagi             
!       x(154)=  QextFlagi             
!       x(155)=  DeltaVfrz             
!       x(156)=  FreezeVfrz            
!       x(157)=  Cp                    
!       x(158)=  Dp                    

!.........................................................................................................

subroutine inj_WT4(nb,name,mode,nbxvar,nbzvar,nbdata,nbaddpar,prm,parname,nbobs, &
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
      nbdata=103
      nbaddpar= 28
      parname(  1)='SNOM'
      parname(  2)='Rc'
      parname(  3)='Xc'
      parname(  4)='vcompFlag'
      parname(  5)='Kc'
      parname(  6)='Tfltr'
      parname(  7)='RefFlag'
      parname(  8)='dbd'
      parname(  9)='emax'
      parname( 10)='emin'
      parname( 11)='Kp'
      parname( 12)='Ki'
      parname( 13)='Qmax'
      parname( 14)='Qmin'
      parname( 15)='Tft'
      parname( 16)='Tfv'
      parname( 17)='vfrz'
      parname( 18)='Tp'
      parname( 19)='fdbd1'
      parname( 20)='fdbd2'
      parname( 21)='Ddn'
      parname( 22)='Dup'
      parname( 23)='femax'
      parname( 24)='femin'
      parname( 25)='kpg'
      parname( 26)='kig'
      parname( 27)='Pmax'
      parname( 28)='Pmin'
      parname( 29)='Tlag'
      parname( 30)='FreqFlag'
      parname( 31)='Tmesf'
      parname( 32)='QextFlag'
      parname( 33)='Ht'
      parname( 34)='Hg'
      parname( 35)='wo'
      parname( 36)='Dshaft'
      parname( 37)='Kshaft'
      parname( 38)='vdip'
      parname( 39)='vup'
      parname( 40)='Trv'
      parname( 41)='vref0'
      parname( 42)='vref1'
      parname( 43)='dbd1'
      parname( 44)='dbd2'
      parname( 45)='kqv'
      parname( 46)='Iqh1'
      parname( 47)='Iql1'
      parname( 48)='qmax'
      parname( 49)='qmin'
      parname( 50)='vmax'
      parname( 51)='vmin'
      parname( 52)='kqp'
      parname( 53)='kqi'
      parname( 54)='kvp'
      parname( 55)='kvi'
      parname( 56)='Tiq'
      parname( 57)='vq1'
      parname( 58)='Iq1'
      parname( 59)='vq2'
      parname( 60)='Iq2'
      parname( 61)='vq3'
      parname( 62)='Iq3'
      parname( 63)='vq4'
      parname( 64)='Iq4'
      parname( 65)='vp1'
      parname( 66)='Ip1'
      parname( 67)='vp2'
      parname( 68)='Ip2'
      parname( 69)='vp3'
      parname( 70)='Ip3'
      parname( 71)='vp4'
      parname( 72)='Ip4'
      parname( 73)='dPmax'
      parname( 74)='dPmin'
      parname( 75)='pmax'
      parname( 76)='pmin'
      parname( 77)='Tpord'
      parname( 78)='Imax'
      parname( 79)='Thld'
      parname( 80)='Thld2'
      parname( 81)='Iqfrz'
      parname( 82)='PFFlag'
      parname( 83)='vFlag'
      parname( 84)='QFlag'
      parname( 85)='PQFlag'
      parname( 86)='PFlag'
      parname( 87)='Iqrmax'
      parname( 88)='Iqrmin'
      parname( 89)='Tg'
      parname( 90)='vtmax'
      parname( 91)='accel'
      parname( 92)='QMIN'
      parname( 93)='lvpnt0'
      parname( 94)='lvpnt1'
      parname( 95)='Brkpt'
      parname( 96)='zerox'
      parname( 97)='Lvpl1'
      parname( 98)='Lvplsw'
      parname( 99)='rrpwr'
      parname(100)='vPLL'
      parname(101)='kpPLL'
      parname(102)='kiPLL'
      parname(103)='wrefPLL'
      parname(104)='Qextini'
      parname(105)='Prefini'
      parname(106)='vref'
      parname(107)='vto'
      parname(108)='Peo'
      parname(109)='Qgeno'
      parname(110)='vconxo'
      parname(111)='vconyo'
      parname(112)='vcono'
      parname(113)='Qref'
      parname(114)='Plantpref'
      parname(115)='Freqref'
      parname(116)='Tmo'
      parname(117)='pfaref'
      parname(118)='vq1Left'
      parname(119)='vq4Right'
      parname(120)='vp1Left'
      parname(121)='vp4Right'
      parname(122)='BrkptRight'
      parname(123)='lvpnt0Left'
      parname(124)='lvpnt1Rght'
      parname(125)='IqrminF'
      parname(126)='IqrmaxF'
      parname(127)='vx0'
      parname(128)='vy0'
      parname(129)='PLLPhsAgl0'
      parname(130)='UPlim'
      parname(131)='DOWNlim'
      adix=  1
      adiy=  2
      nbxvar=164
      nbzvar= 55

!........................................................................................
   case (define_obs)
      nbobs= 27
      obsname(  1)='Qgen'
      obsname(  2)='Pe'
      obsname(  3)='vt'
      obsname(  4)='Qext'
      obsname(  5)='Pref'
      obsname(  6)='Freq'
      obsname(  7)='vcon'
      obsname(  8)='vref'
      obsname(  9)='Qbranch'
      obsname( 10)='Qref'
      obsname( 11)='Pbranch'
      obsname( 12)='Plantpref'
      obsname( 13)='Tmo'
      obsname( 14)='Te'
      obsname( 15)='wg'
      obsname( 16)='Iqinj'
      obsname( 17)='Iqcmd'
      obsname( 18)='Ipcmd'
      obsname( 19)='Iqmax'
      obsname( 20)='Iqmin'
      obsname( 21)='Ipmax'
      obsname( 22)='Iqf'
      obsname( 23)='Ipf'
      obsname( 24)='Iq'
      obsname( 25)='Ip'
      obsname( 26)='x59'
      obsname( 27)='pfaref'

!........................................................................................
   case (evaluate_obs)
      obs(  1)=x(  7)              
      obs(  2)=x(  6)              
      obs(  3)=x(  5)              
      obs(  4)=x( 98)              
      obs(  5)=x( 71)              
      obs(  6)=x(132)              
      obs(  7)=x(148)              
      obs(  8)=prm(106)            
      obs(  9)=x(149)              
      obs( 10)=prm(113)            
      obs( 11)=x(150)              
      obs( 12)=prm(114)            
      obs( 13)=prm(116)            
      obs( 14)=x( 47)              
      obs( 15)=x( 44)              
      obs( 16)=x( 78)              
      obs( 17)=x( 18)              
      obs( 18)=x( 23)              
      obs( 19)=x( 58)              
      obs( 20)=x( 59)              
      obs( 21)=x( 61)              
      obs( 22)=x(  8)              
      obs( 23)=x(  9)              
      obs( 24)=x( 17)              
      obs( 25)=x( 20)              
      obs( 26)=x( 26)              
      obs( 27)=prm(117)            

!........................................................................................
   case (initialize)

!Qextini = 0.		
!      prm(104)= 0.		

!Prefini = 0.		
!      prm(105)= 0.		

!vref = 0.			
!      prm(106)= 0.			

!vto = sqrt([vx]**2+[vy]**2)
      prm(107)= sqrt(vx**2+vy**2)

!Peo = [vx]*[ix]*sbase/{SNOM} + [vy]*[iy]*sbase/{SNOM}
      prm(108)= vx*ix*sbase/prm(  1) + vy*iy*sbase/prm(  1)

!Qgeno = [vy]*[ix]*sbase/{SNOM} - [vx]*[iy]*sbase/{SNOM}
      prm(109)= vy*ix*sbase/prm(  1) - vx*iy*sbase/prm(  1)

!vconxo = [vx] - {Rc}*[ix]*sbase/{SNOM} + {Xc}*[iy]*sbase/{SNOM}		
      prm(110)= vx - prm(  2)*ix*sbase/prm(  1) + prm(  3)*iy*sbase/prm(  1)		

!vconyo = [vy] - {Rc}*[iy]*sbase/{SNOM} - {Xc}*[ix]*sbase/{SNOM}
      prm(111)= vy - prm(  2)*iy*sbase/prm(  1) - prm(  3)*ix*sbase/prm(  1)

!vcono = sqrt({vconxo}**2+{vconyo}**2)
      prm(112)= sqrt(prm(110)**2+prm(111)**2)

!Qref = {vconyo}*[ix]*sbase/{SNOM} - {vconxo}*[iy]*sbase/{SNOM}	
      prm(113)= prm(111)*ix*sbase/prm(  1) - prm(110)*iy*sbase/prm(  1)	

!Plantpref = {vconxo}*[ix]*sbase/{SNOM} + {vconyo}*[iy]*sbase/{SNOM}
      prm(114)= prm(110)*ix*sbase/prm(  1) + prm(111)*iy*sbase/prm(  1)

!Freqref = 1.d0
      prm(115)= 1.d0

!Tmo = {Peo}/{wo}													
      prm(116)= prm(108)/prm( 35)													

!pfaref = atan({Qgeno}/{Peo})										
      prm(117)= atan(prm(109)/prm(108))										

!vq1Left = {vq1} - 1.
      prm(118)= prm( 57) - 1.

!vq4Right = {vq4} + 1.
      prm(119)= prm( 63) + 1.

!vp1Left = {vp1} - 1.
      prm(120)= prm( 65) - 1.

!vp4Right = {vp4} + 1.
      prm(121)= prm( 71) + 1.

!BrkptRight = {Brkpt} + 1.											
      prm(122)= prm( 95) + 1.											

!lvpnt0Left = {lvpnt0} - 1.
      prm(123)= prm( 93) - 1.

!lvpnt1Rght = {lvpnt1} + 1.
      prm(124)= prm( 94) + 1.

!IqrminF = fcnIqrsBattery({Iqrmin},{Iqrmax},{Qgeno},'Iqrmin')
      prm(125)= fcnIqrsBattery(prm( 88),prm( 87),prm(109),'Iqrmin')

!IqrmaxF = fcnIqrsBattery({Iqrmin},{Iqrmax},{Qgeno},'Iqrmax')
      prm(126)= fcnIqrsBattery(prm( 88),prm( 87),prm(109),'Iqrmax')

!vx0 = [vx]				
      prm(127)= vx				

!vy0 = [vy]
      prm(128)= vy

!PLLPhsAgl0 = atan([vy]/[vx])
      prm(129)= atan(vy/vx)

!UPlim = 999999999.
      prm(130)= 999999999.

!DOWNlim = -999999999.
      prm(131)= -999999999.

!one =  1.
      x(  3)= 1.

!zero =  0.
      x(  4)= 0.

!vt =  {vto}
      x(  5)= prm(107)

!Pe =  {Peo}
      x(  6)= prm(108)

!Qgen =  {Qgeno}
      x(  7)= prm(109)

!Iqf =  [ix]*sbase/{SNOM}*sin({PLLPhsAgl0}) - [iy]*sbase/{SNOM}*cos({PLLPhsAgl0})	
      x(  8)= x(  1)*sbase/prm(  1)*sin(prm(129)) - x(  2)*sbase/prm(  1)*cos(prm(129))	

!Ipf =  [ix]*sbase/{SNOM}*cos({PLLPhsAgl0}) + [iy]*sbase/{SNOM}*sin({PLLPhsAgl0})
      x(  9)= x(  1)*sbase/prm(  1)*cos(prm(129)) + x(  2)*sbase/prm(  1)*sin(prm(129))

!x56 =  {vto}
      x( 10)= prm(107)

!Q3 =  [Iqf]*[x56]
      x( 11)= x(  8)*x( 10)

!Q2 =  [Q3]
      x( 12)= x( 11)

!x53 =  {accel}*({vto}-{vtmax})
      x( 13)= prm( 91)*(prm(107)-prm( 90))

!x54 =  satuRATION([x53],0.d0,999999999.d0)
      x( 14)= satuRATION(x( 13),0.d0,999999999.d0)

!x55 =  switchx55yFPLLBattery([x54],{vto},{vtmax})
      x( 15)= switchx55yFPLLBattery(x( 14),prm(107),prm( 90))

!Q1 =  [Q2] + [x55]
      x( 16)= x( 12) + x( 15)

!Iq =  [Q1]/{vto}
      x( 17)= x( 16)/prm(107)

!Iqcmd =  [Iq]
      x( 18)= x( 17)

!x57 =  fcnx57Battery({vto},{lvpnt0},{lvpnt1})
      x( 19)= fcnx57Battery(prm(107),prm( 93),prm( 94))

!Ip =  [Ipf]/[x57]
      x( 20)= x(  9)/x( 19)

!Z26 =  0.
      x( 21)= 0.

!Z25 =  0.
      x( 22)= 0.

!Ipcmd =  [Ip]
      x( 23)= x( 20)

!x58 =  999999999.
      x( 24)= 999999999.

!Lvplswi =  {Lvplsw} - 0.5
      x( 25)= prm( 98) - 0.5

!x59 =  999999999.
      x( 26)= 999999999.

!LimG =  999999999.
      x( 27)= 999999999.

!LimP =  -999999999.
      x( 28)= -999999999.

!LVPL =  {Lvpl1}
      x( 29)= prm( 97)

!FlagLVPL =  [x56] - {Brkpt}
      x( 30)= x( 10) - prm( 95)

!FlagVolim =  {vtmax} - {vto}
      x( 31)= prm( 90) - prm(107)

!DeltaVPLLFlag =  [x56] - {vPLL}													
      x( 32)= x( 10) - prm(100)													

!FPLL =  switchx55yFPLLBattery(1.d0,[x56],{vPLL})
      x( 33)= switchx55yFPLLBattery(1.d0,x( 10),prm(100))

!vxfilt =  {vx0}
      x( 34)= prm(127)

!vyfilt =  {vy0}
      x( 35)= prm(128)

!vq =  -{vx0}*sin({PLLPhsAgl0}) + {vy0}*cos({PLLPhsAgl0})
      x( 36)= -prm(127)*sin(prm(129)) + prm(128)*cos(prm(129))

!wPLL =  {wrefPLL}
      x( 37)= prm(103)

!x60 =  0.
      x( 38)= 0.

!PLLPhaseAngle =  {PLLPhsAgl0}
      x( 39)= prm(129)

!Deltawt =  0.																	
      x( 40)= 0.																	

!Deltawg =  0.
      x( 41)= 0.

!Deltaw =  0.
      x( 42)= 0.

!TDs =  0.
      x( 43)= 0.

!wg =  {wo}
      x( 44)= prm( 35)

!TK =  {Tmo}
      x( 45)= prm(116)

!Tnt =  0.
      x( 46)= 0.

!Te =  [Pe]/[wg]
      x( 47)= x(  6)/x( 44)

!Tng =  0.
      x( 48)= 0.

!DeltaTheta =  [TK]/{Kshaft}
      x( 49)= x( 45)/prm( 37)

!vtfilt =  {vto}																	
      x( 50)= prm(107)																	

!C =  switch(sqrt({Imax}**2-[Ipcmd]**2),{Imax},{PQFlag})
      x( 51)= switch(sqrt(prm( 78)**2-x( 23)**2),prm( 78),prm( 85))

!IMAX =  {Imax}
      x( 52)= prm( 78)

!A =  switch([C],{Imax},{PQFlag})
      x( 53)= switch(x( 51),prm( 78),prm( 85))

!D =  switch({Imax},sqrt({Imax}**2-[Iqcmd]**2),{PQFlag})
      x( 54)= switch(prm( 78),sqrt(prm( 78)**2-x( 18)**2),prm( 85))

!B =  switch({Imax},[D],{PQFlag})
      x( 55)= switch(prm( 78),x( 54),prm( 85))

!VDL1 =  fcnVDLsBattery({vq1},{vq2},{vq3},{vq4},{Iq1},{Iq2},{Iq3},{Iq4},{vto})
      x( 56)= fcnVDLsBattery(prm( 57),prm( 59),prm( 61),prm( 63),prm( 58),prm( 60),prm( 62),prm( 64),prm(107))

!VDL2 =  fcnVDLsBattery({vp1},{vp2},{vp3},{vp4},{Ip1},{Ip2},{Ip3},{Ip4},{vto})
      x( 57)= fcnVDLsBattery(prm( 65),prm( 67),prm( 69),prm( 71),prm( 66),prm( 68),prm( 70),prm( 72),prm(107))

!Iqmax =  minBattery([VDL1],[A])
      x( 58)= minBattery(x( 56),x( 53))

!Iqmin =  -[Iqmax]
      x( 59)= -x( 58)

!Ipmaxprev =  minBattery([VDL2],[B])
      x( 60)= minBattery(x( 57),x( 55))

!Ipmax =  [Ipmaxprev]
      x( 61)= x( 60)

!Ipmin =  fcnVerificLimIREEC_A(name,[Iqmax],[Iqmin],[Iqcmd],[Ipmax],[Ipcmd],{vdip},{vup},{vto})
      x( 62)= fcnVerificLimIREEC_A(name,x( 58),x( 59),x( 18),x( 61),x( 23),prm( 38),prm( 39),prm(107))

!x47 =  [Ipcmd]
      x( 63)= x( 23)

!x44 =  {vto}
      x( 64)= prm(107)

!Pord =  [x47]*{vto}
      x( 65)= x( 63)*prm(107)

!x23 =  [Pord]
      x( 66)= x( 65)

!x24 =  IniREEC_Ax45Yx24({PFlag},[x23],[wg],'x24')
      x( 67)= IniREEC_Ax45Yx24(prm( 86),x( 66),x( 44),'x24')

!x45 =  IniREEC_Ax45Yx24({PFlag},[x23],[wg],'x45')
      x( 68)= IniREEC_Ax45Yx24(prm( 86),x( 66),x( 44),'x45')

!Z20 =  0.
      x( 69)= 0.

!Z21 =  0.
      x( 70)= 0.

!Pref =  [x45]
      x( 71)= x( 68)

!Prefini = Pref		
      prm(105)= x( 71)	

!x46 =  0.
      x( 72)= 0.

!x43 =  [Iqcmd]
      x( 73)= x( 18)

!x26 =  {vref0} - {vto}
      x( 74)= prm( 41) - prm(107)

!verr =  deadBAND([x26],{dbd1},{dbd2})
      x( 75)= deadBAND(x( 74),prm( 43),prm( 44))

!Iqv =  [verr]*{kqv}
      x( 76)= x( 75)*prm( 45)

!x22 =  [Iqv]
      x( 77)= x( 76)

!Iqinj =  0.
      x( 78)= 0.

!x42 =  [x43] - [Iqinj]
      x( 79)= x( 73) - x( 78)

!x38 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x38')
      x( 80)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x38')

!x52 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x52')
      x( 81)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x52')

!x37 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x37')
      x( 82)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x37')

!x36 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x36')
      x( 83)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x36')

!x35 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x35')
      x( 84)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x35')

!x34 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x34')
      x( 85)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x34')

!x33 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x33')
      x( 86)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x33')

!x51 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x51')
      x( 87)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x51')

!x32 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x32')
      x( 88)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x32')

!x31 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x31')
      x( 89)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x31')

!x30 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x30')
      x( 90)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x30')

!x29 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x29')
      x( 91)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x29')

!x25 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x25')
      x( 92)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x25')

!x39 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x39')
      x( 93)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x39')

!x40 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x40')
      x( 94)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x40')

!x41 =  Ini_Branch_Q_REECA({QFlag},{vFlag},[x42],{vto},{Qgeno},{vref1},'x41')
      x( 95)= Ini_Branch_Q_REECA(prm( 84),prm( 83),x( 79),prm(107),prm(109),prm( 42),'x41')

!x28 =  [x29]
      x( 96)= x( 91)

!x27 =  {Peo}
      x( 97)= prm(108)

!Qext =  [x29]
      x( 98)= x( 91)

!Qextini = Qext		
      prm(104)= x( 98)

!voltageDip =  0.
      x( 99)= 0.

!FlagDip =  {vto} - {vdip}
      x(100)= prm(107) - prm( 38)

!FlagUp =  {vup} - {vto}
      x(101)= prm( 39) - prm(107)

!Fdip =  0.
      x(102)= 0.

!Fup =  0.
      x(103)= 0.

!PFFlagi =  {PFFlag} - 0.5
      x(104)= prm( 82) - 0.5

!vFlagi =  {vFlag} - 0.5
      x(105)= prm( 83) - 0.5

!QFlagi =  {QFlag} - 0.5
      x(106)= prm( 84) - 0.5

!PQFlagi =  {PQFlag} - 0.5
      x(107)= prm( 85) - 0.5

!PFlagi =  {PFlag} - 0.5
      x(108)= prm( 86) - 0.5

!MultThld =  0.
      x(109)= 0.

!MultThld2 =  0.
      x(110)= 0.

!tThld =  0.
      x(111)= 0.

!tThld2 =  0.
      x(112)= 0.

!FThld2 =  1.
      x(113)= 1.

!Position =  0.
      x(114)= 0.

!x21 =  1.
      x(115)= 1.

!Y21 =  {vto} + {Qref}*{Kc}														
      x(116)= prm(107) + prm(113)*prm(  5)														

!Y1 =  switch({vcono},[Y21],{vcompFlag})
      x(117)= switch(prm(112),x(116),prm(  4))

!Y2 =  [Y1]
      x(118)= x(117)

!vref = Y2		
      prm(106)= x(118)

!Y22 =  0.
      x(119)= 0.

!Y3 =  {Qref}
      x(120)= prm(113)

!Y23 =  0.
      x(121)= 0.

!Y4 =  0.
      x(122)= 0.

!Y5 =  0.
      x(123)= 0.

!Y6 =  0.
      x(124)= 0.

!Y24 =  0.
      x(125)= 0.

!Y7 =  [Qext]
      x(126)= x( 98)

!Y26 =  [Qext]
      x(127)= x( 98)

!Y8 =  [Qext]
      x(128)= x( 98)

!Y25 =  [Qext]
      x(129)= x( 98)

!QextiniE =  [Qext]
      x(130)= x( 98)

!Y9 =  {Plantpref}
      x(131)= prm(114)

!Freq =  1.d0
      x(132)= 1.d0

!Y10 =  0.
      x(133)= 0.

!Y11 =  0.
      x(134)= 0.

!Y12 =  0.
      x(135)= 0.

!Y13 =  0.
      x(136)= 0.

!Y14 =  0.
      x(137)= 0.

!Y15 =  0.
      x(138)= 0.

!Y16 =  0.
      x(139)= 0.

!Y17 =  0.
      x(140)= 0.

!Y18 =  0.
      x(141)= 0.

!Y27 =  [Pref]
      x(142)= x( 71)

!Y19 =  [Pref]
      x(143)= x( 71)

!Y20 =  [Pref]
      x(144)= x( 71)

!PrefiniE =  [Pref]
      x(145)= x( 71)

!vconx =  {vconxo}				
      x(146)= prm(110)				

!vcony =  {vconyo}
      x(147)= prm(111)

!vcon =  {vcono}
      x(148)= prm(112)

!Qbranch =  {Qref}
      x(149)= prm(113)

!Pbranch =  {Plantpref}
      x(150)= prm(114)

!vcompFlagi =  {vcompFlag} - 0.5
      x(151)= prm(  4) - 0.5

!RefFlagi =  {RefFlag} - 0.5
      x(152)= prm(  7) - 0.5

!FreqFlagi =  {FreqFlag} - 0.5
      x(153)= prm( 30) - 0.5

!QextFlagi =  {QextFlag} - 0.5
      x(154)= prm( 32) - 0.5

!DeltaVfrz =  {vto} - {vfrz}
      x(155)= prm(107) - prm( 17)

!FreezeVfrz =  1.
      x(156)= 1.

!Cp =  switch([Ipcmd],[zero],{PQFlag})
      x(157)= switch(x( 23),x(  4),prm( 85))

!Dp =  switch([zero],[Iqcmd],{PQFlag})
      x(158)= switch(x(  4),x( 18),prm( 85))

!& algeq
      eqtyp(  1)=0

!& algeq
      eqtyp(  2)=0

!& algeq
      eqtyp(  3)=0

!& algeq
      eqtyp(  4)=0

!& algeq
      eqtyp(  5)=0

!& algeq								!Aqui empiezan modelos de REPC_A
      eqtyp(  6)=0

!& algeq
      eqtyp(  7)=0

!& algeq
      eqtyp(  8)=0

!& algeq
      eqtyp(  9)=0

!& algeq
      eqtyp( 10)=0

!& f_inj
      x(159)=vx
      x(160)=vy
      eqtyp( 11)=159
      eqtyp( 12)=160
      eqtyp( 13)=0.

!& algeq
      eqtyp( 14)=0

!& algeq
      eqtyp( 15)=0

!& swsign
      eqtyp( 16)=0
      if(x(151)>=0.)then
         z(  1)=1
      else
         z(  1)=2
      endif

!& tf1p
      eqtyp( 17)=118
      tc( 17)=prm(  6)

!& algeq
      eqtyp( 18)=0

!& tf1p
      eqtyp( 19)=120
      tc( 19)=prm(  6)

!& algeq
      eqtyp( 20)=0

!& algeq
      eqtyp( 21)=0

!& swsign
      eqtyp( 22)=0
      if(x(152)>=0.)then
         z(  2)=1
      else
         z(  2)=2
      endif

!& db
      eqtyp( 23)=0
      if(x(122)>prm(  8))then
         z(  3)=1
      elseif(x(122)<(-prm(  8)))then
         z(  3)=-1
      else
         z(  3)=0
      endif

!& lim
      eqtyp( 24)=0
      if(x(123)>prm(  9))then
         z(  4)=1
      elseif(x(123)<prm( 10))then
         z(  4)=-1
      else
         z(  4)=0
      endif

!& algeq
      eqtyp( 25)=0

!& swsign
      eqtyp( 26)=0
      if(x(155)>=0.)then
         z(  5)=1
      else
         z(  5)=2
      endif

!& algeq
      eqtyp( 27)=0

!& inlim
      if (1.>= 0.005)then
         tc( 28)=1.
      endif
      if (x(126)>prm( 13))then
         z(  6)=1
         eqtyp( 28)=0
      elseif (x(126)<prm( 14)) then
         z(  6)=-1
         eqtyp( 28)=0
      else
         z(  6)=0
         if (1.>= 0.005)then
            eqtyp( 28)=126
         else
            eqtyp( 28)=0
         endif
      endif

!& algeq
      eqtyp( 29)=0

!& lim
      eqtyp( 30)=0
      if(x(127)>prm( 13))then
         z(  7)=1
      elseif(x(127)<prm( 14))then
         z(  7)=-1
      else
         z(  7)=0
      endif

!& tf1p1z
      x(161)=x(128)
      eqtyp( 31)=161
      tc( 31)=prm( 16)
      eqtyp( 32)=0

!& algeq
      eqtyp( 33)=0

!& algeq
      eqtyp( 34)=0

!& swsign
      eqtyp( 35)=0
      if(x(154)>=0.)then
         z(  8)=1
      else
         z(  8)=2
      endif

!& tf1p
      eqtyp( 36)=131
      tc( 36)=prm( 18)

!& algeq
      eqtyp( 37)=0

!& db
      eqtyp( 38)=0
      if(x(133)>prm( 20))then
         z(  9)=1
      elseif(x(133)<prm( 19))then
         z(  9)=-1
      else
         z(  9)=0
      endif

!& algeq
      eqtyp( 39)=0

!& algeq
      eqtyp( 40)=0

!& lim
      eqtyp( 41)=0
      if(x(135)>0.)then
         z( 10)=1
      elseif(x(135)<(-999999999.))then
         z( 10)=-1
      else
         z( 10)=0
      endif

!& lim
      eqtyp( 42)=0
      if(x(136)>999999999.)then
         z( 11)=1
      elseif(x(136)<0.)then
         z( 11)=-1
      else
         z( 11)=0
      endif

!& algeq
      eqtyp( 43)=0

!& algeq
      eqtyp( 44)=0

!& lim
      eqtyp( 45)=0
      if(x(140)>prm( 23))then
         z( 12)=1
      elseif(x(140)<prm( 24))then
         z( 12)=-1
      else
         z( 12)=0
      endif

!& pictllim
      if(prm( 26)*x(141)> 0.)then
         z( 13)=1
         eqtyp( 46)=0
         x(162)=prm( 27)
      elseif(prm( 26)*x(141)< 0.)then
         z( 13)=-1
         eqtyp( 46)=0
         x(162)=prm( 28)
      else
         z( 13)=0
         eqtyp( 46)=162
         x(162)=x(142)
      endif
      eqtyp( 47)=0

!& lim
      eqtyp( 48)=0
      if(x(142)>prm( 27))then
         z( 14)=1
      elseif(x(142)<prm( 28))then
         z( 14)=-1
      else
         z( 14)=0
      endif

!& tf1p
      eqtyp( 49)=144
      tc( 49)=prm( 29)

!& algeq
      eqtyp( 50)=0

!& algeq
      eqtyp( 51)=0

!& swsign
      eqtyp( 52)=0
      if(x(153)>=0.)then
         z( 15)=1
      else
         z( 15)=2
      endif

!& algeq								!Aqui empiezan modelos de WTGT_A
      eqtyp( 53)=0

!& int
      if (2.d0 * prm( 33)< 0.005)then
         eqtyp( 54)=0
      else
         eqtyp( 54)= 40
         tc( 54)=2.d0 * prm( 33)
      endif

!& algeq
      eqtyp( 55)=0

!& algeq
      eqtyp( 56)=0

!& int
      if (2.d0 * prm( 34)< 0.005)then
         eqtyp( 57)=0
      else
         eqtyp( 57)= 41
         tc( 57)=2.d0 * prm( 34)
      endif

!& algeq
      eqtyp( 58)=0

!& algeq
      eqtyp( 59)=0

!& int
      if (1.d0< 0.005)then
         eqtyp( 60)=0
      else
         eqtyp( 60)= 49
         tc( 60)=1.d0
      endif

!& algeq
      eqtyp( 61)=0

!& algeq								!Salida wg del modelo WTGT_A
      eqtyp( 62)=0

!& algeq								!Aqui empiezan modelos de REEC_A
      eqtyp( 63)=0

!& algeq
      eqtyp( 64)=0

!& swsign
      eqtyp( 65)=0
      if(x(100)>=0.)then
         z( 16)=1
      else
         z( 16)=2
      endif

!& swsign
      eqtyp( 66)=0
      if(x(101)>=0.)then
         z( 17)=1
      else
         z( 17)=2
      endif

!& algeq
      eqtyp( 67)=0

!& algeq
      eqtyp( 68)=0

!& algeq
      eqtyp( 69)=0

!& algeq
      eqtyp( 70)=0

!& algeq
      eqtyp( 71)=0

!& algeq
      eqtyp( 72)=0

!& algeq
      eqtyp( 73)=0

!& swsign
      eqtyp( 74)=0
      if(x(107)>=0.)then
         z( 18)=1
      else
         z( 18)=2
      endif

!& swsign
      eqtyp( 75)=0
      if(x(107)>=0.)then
         z( 19)=1
      else
         z( 19)=2
      endif

!& algeq
      eqtyp( 76)=0

!& swsign
      eqtyp( 77)=0
      if(x(107)>=0.)then
         z( 20)=1
      else
         z( 20)=2
      endif

!& min2v
      eqtyp( 78)=0
      if(x( 56)<x( 53))then
         z( 21)=1
      else
         z( 21)=2
      endif

!& algeq
      eqtyp( 79)=0

!& algeq
      eqtyp( 80)=0

!& swsign
      eqtyp( 81)=0
      if(x(107)>=0.)then
         z( 22)=1
      else
         z( 22)=2
      endif

!& min2v
      eqtyp( 82)=0
      if(x( 57)<x( 55))then
         z( 23)=1
      else
         z( 23)=2
      endif

!& int
      if (1.< 0.005)then
         eqtyp( 83)=0
      else
         eqtyp( 83)=112
         tc( 83)=1.
      endif

!& fsa
      z( 24)=1
      eqtyp( 84)=0
      eqtyp( 85)=0

!& int
      if (1.< 0.005)then
         eqtyp( 86)=0
      else
         eqtyp( 86)= 61
         tc( 86)=1.
      endif

!& fsa
      z( 25)=1
      eqtyp( 87)=0

!& algeq
      eqtyp( 88)=0

!& tf1p
      eqtyp( 89)= 50
      tc( 89)=prm( 40)

!& algeq
      eqtyp( 90)=0

!& db
      eqtyp( 91)=0
      if(x( 74)>prm( 44))then
         z( 26)=1
      elseif(x( 74)<prm( 43))then
         z( 26)=-1
      else
         z( 26)=0
      endif

!& algeq
      eqtyp( 92)=0

!& lim
      eqtyp( 93)=0
      if(x( 76)>prm( 46))then
         z( 27)=1
      elseif(x( 76)<prm( 47))then
         z( 27)=-1
      else
         z( 27)=0
      endif

!& int
      if (1.< 0.005)then
         eqtyp( 94)=0
      else
         eqtyp( 94)=111
         tc( 94)=1.
      endif

!& fsa
      z( 28)=1
      eqtyp( 95)=0
      eqtyp( 96)=0
      eqtyp( 97)=0

!& tf1p
      eqtyp( 98)= 97
      tc( 98)=prm( 18)

!& algeq
      eqtyp( 99)=0

!& swsign
      eqtyp(100)=0
      if(x(104)>=0.)then
         z( 29)=1
      else
         z( 29)=2
      endif

!& lim
      eqtyp(101)=0
      if(x( 91)>prm( 48))then
         z( 30)=1
      elseif(x( 91)<prm( 49))then
         z( 30)=-1
      else
         z( 30)=0
      endif

!& algeq
      eqtyp(102)=0

!& algeq
      eqtyp(103)=0

!& inlim
      if (1.>= 0.005)then
         tc(104)=1.
      endif
      if (x( 87)>prm( 50))then
         z( 31)=1
         eqtyp(104)=0
      elseif (x( 87)<prm( 51)) then
         z( 31)=-1
         eqtyp(104)=0
      else
         z( 31)=0
         if (1.>= 0.005)then
            eqtyp(104)= 87
         else
            eqtyp(104)=0
         endif
      endif

!& algeq
      eqtyp(105)=0

!& algeq
      eqtyp(106)=0

!& swsign
      eqtyp(107)=0
      if(x(105)>=0.)then
         z( 32)=1
      else
         z( 32)=2
      endif

!& lim
      eqtyp(108)=0
      if(x( 85)>prm( 50))then
         z( 33)=1
      elseif(x( 85)<prm( 51))then
         z( 33)=-1
      else
         z( 33)=0
      endif

!& algeq
      eqtyp(109)=0

!& algeq
      eqtyp(110)=0

!& invlim
      if (1.>= 0.005)then
         tc(111)=1.
      endif
      if(x( 81)>x( 58))then
         z( 34)=1
         eqtyp(111)=0
      elseif(x( 81)<x( 59)) then
         z( 34)=-1
         eqtyp(111)=0
      else
         z( 34)=0
         if (1.>= 0.005)then
            eqtyp(111)= 81
         else
            eqtyp(111)=0
         endif
      endif

!& algeq
      eqtyp(112)=0

!& lim
      eqtyp(113)=0
      if(x( 50)>999999999.)then
         z( 35)=1
      elseif(x( 50)<0.01)then
         z( 35)=-1
      else
         z( 35)=0
      endif

!& algeq
      eqtyp(114)=0

!& algeq
      eqtyp(115)=0

!& int
      if (prm( 56)< 0.005)then
         eqtyp(116)=0
      else
         eqtyp(116)= 95
         tc(116)=prm( 56)
      endif

!& swsign
      eqtyp(117)=0
      if(x(106)>=0.)then
         z( 36)=1
      else
         z( 36)=2
      endif

!& algeq
      eqtyp(118)=0

!& limvb
      eqtyp(119)=0
      if(x( 73)>x( 58))then
         z( 37)=1
      elseif(x( 73)<x( 59))then
         z( 37)=-1
      else
         z( 37)=0
      endif

!& pwlin6
      eqtyp(120)=0
      if(x( 50)<prm(118))then
         z( 38)=1
      elseif(x( 50)>=prm(119))then
         z( 38)=   5
      elseif(prm(118)<=x( 50) .and. x( 50)<prm( 57))then
         z( 38)=  1
      elseif(prm( 57)<=x( 50) .and. x( 50)<prm( 59))then
         z( 38)=  2
      elseif(prm( 59)<=x( 50) .and. x( 50)<prm( 61))then
         z( 38)=  3
      elseif(prm( 61)<=x( 50) .and. x( 50)<prm( 63))then
         z( 38)=  4
      elseif(prm( 63)<=x( 50) .and. x( 50)<prm(119))then
         z( 38)=  5
      endif

!& pwlin6
      eqtyp(121)=0
      if(x( 50)<prm(120))then
         z( 39)=1
      elseif(x( 50)>=prm(121))then
         z( 39)=   5
      elseif(prm(120)<=x( 50) .and. x( 50)<prm( 65))then
         z( 39)=  1
      elseif(prm( 65)<=x( 50) .and. x( 50)<prm( 67))then
         z( 39)=  2
      elseif(prm( 67)<=x( 50) .and. x( 50)<prm( 69))then
         z( 39)=  3
      elseif(prm( 69)<=x( 50) .and. x( 50)<prm( 71))then
         z( 39)=  4
      elseif(prm( 71)<=x( 50) .and. x( 50)<prm(121))then
         z( 39)=  5
      endif

!& algeq
      eqtyp(122)=0

!& lim
      eqtyp(123)=0
      if(x( 69)>prm( 73))then
         z( 40)=1
      elseif(x( 69)<prm( 74))then
         z( 40)=-1
      else
         z( 40)=0
      endif

!& int
      if (1.< 0.005)then
         eqtyp(124)=0
      else
         eqtyp(124)= 68
         tc(124)=1.
      endif

!& algeq
      eqtyp(125)=0

!& swsign
      eqtyp(126)=0
      if(x(108)>=0.)then
         z( 41)=1
      else
         z( 41)=2
      endif

!& algeq
      eqtyp(127)=0

!& inlim
      if (prm( 77)>= 0.005)then
         tc(128)=prm( 77)
      endif
      if (x( 65)>prm( 75))then
         z( 42)=1
         eqtyp(128)=0
      elseif (x( 65)<prm( 76)) then
         z( 42)=-1
         eqtyp(128)=0
      else
         z( 42)=0
         if (prm( 77)>= 0.005)then
            eqtyp(128)= 65
         else
            eqtyp(128)=0
         endif
      endif

!& algeq
      eqtyp(129)=0

!& limvb
      eqtyp(130)=0
      if(x( 63)>x( 61))then
         z( 43)=1
      elseif(x( 63)<x( 62))then
         z( 43)=-1
      else
         z( 43)=0
      endif

!& algeq								!Aqui empiezan modelos de REGC_A
      eqtyp(131)=0

!& algeq
      eqtyp(132)=0

!& algeq
      eqtyp(133)=0

!& tf1p2lim
      if(prm( 89)< 0.001)then
         prm( 89)=0.d0
         prm(131)=-huge(0.d0)
         prm(130)= huge(0.d0)
         prm(125)=-huge(0.d0)
         prm(126)= huge(0.d0)
      endif
      if(1.*x( 18)-x( 17)>prm(126)*prm( 89))then
         z( 44)=1
      elseif(1.*x( 18)-x( 17)<prm(125)*prm( 89))then
         z( 44)=-1
      else
         z( 44)=0
      endif
      eqtyp(134)=0
      if(x( 17)>prm(130))then
         z( 45)=1
         eqtyp(135)=0
      elseif(x( 17)<prm(131))then
         z( 45)=-1
         eqtyp(135)=0
      else
         z( 45)=0
         eqtyp(135)= 17
      endif
      tc(135)=prm( 89)

!& algeq
      eqtyp(136)=0

!& algeq
      eqtyp(137)=0

!& lim
      eqtyp(138)=0
      if(x( 13)>999999999.)then
         z( 46)=1
      elseif(x( 13)<0.)then
         z( 46)=-1
      else
         z( 46)=0
      endif

!& algeq
      eqtyp(139)=0

!& swsign
      eqtyp(140)=0
      if(x( 31)>=0.)then
         z( 47)=1
      else
         z( 47)=2
      endif

!& algeq
      eqtyp(141)=0

!& lim
      eqtyp(142)=0
      if(x( 12)>999999999.)then
         z( 48)=1
      elseif(x( 12)<prm( 92))then
         z( 48)=-1
      else
         z( 48)=0
      endif

!& tf1p
      eqtyp(143)= 10
      tc(143)=prm(  6)

!& algeq								!Salida Iqf del modelo REGC_A
      eqtyp(144)=0

!& pwlin4
      eqtyp(145)=0
      if(x( 10)<(-10.))then
         z( 49)=1
      elseif(x( 10)>=prm(122))then
         z( 49)=   3
      elseif((-10.)<=x( 10) .and. x( 10)<prm( 96))then
         z( 49)=  1
      elseif(prm( 96)<=x( 10) .and. x( 10)<prm( 95))then
         z( 49)=  2
      elseif(prm( 95)<=x( 10) .and. x( 10)<prm(122))then
         z( 49)=  3
      endif

!& algeq
      eqtyp(146)=0

!& swsign
      eqtyp(147)=0
      if(x( 30)>=0.)then
         z( 50)=1
      else
         z( 50)=2
      endif

!& swsign
      eqtyp(148)=0
      if(x( 25)>=0.)then
         z( 51)=1
      else
         z( 51)=2
      endif

!& algeq
      eqtyp(149)=0

!& lim
      eqtyp(150)=0
      if(x( 21)>prm( 89)*prm( 99))then
         z( 52)=1
      elseif(x( 21)<(-999999999.))then
         z( 52)=-1
      else
         z( 52)=0
      endif

!& invlim
      if (prm( 89)>= 0.005)then
         tc(151)=prm( 89)
      endif
      if(x( 20)>x( 26))then
         z( 53)=1
         eqtyp(151)=0
      elseif(x( 20)<x( 28)) then
         z( 53)=-1
         eqtyp(151)=0
      else
         z( 53)=0
         if (prm( 89)>= 0.005)then
            eqtyp(151)= 20
         else
            eqtyp(151)=0
         endif
      endif

!& pwlin4
      eqtyp(152)=0
      if(x(  5)<prm(123))then
         z( 54)=1
      elseif(x(  5)>=prm(124))then
         z( 54)=   3
      elseif(prm(123)<=x(  5) .and. x(  5)<prm( 93))then
         z( 54)=  1
      elseif(prm( 93)<=x(  5) .and. x(  5)<prm( 94))then
         z( 54)=  2
      elseif(prm( 94)<=x(  5) .and. x(  5)<prm(124))then
         z( 54)=  3
      endif

!& algeq								!Salida Ipf del modelo REGC_A
      eqtyp(153)=0

!& algeq								!Aquí empiezan modelos del PLL
      eqtyp(154)=0

!& swsign
      eqtyp(155)=0
      if(x( 32)>=0.)then
         z( 55)=1
      else
         z( 55)=2
      endif

!& tf1p
      eqtyp(156)= 34
      tc(156)=prm(  6)

!& tf1p
      eqtyp(157)= 35
      tc(157)=prm(  6)

!& algeq
      eqtyp(158)=0

!& pictl
      eqtyp(159)=164
      x(164)=x( 37)
      eqtyp(160)=0

!& algeq
      eqtyp(161)=0

!& int
      if (1.< 0.005)then
         eqtyp(162)=0
      else
         eqtyp(162)= 39
         tc(162)=1.
      endif

!& algeq
      eqtyp(163)=0

!& algeq
      eqtyp(164)=0

!........................................................................................
   case (evaluate_eqs)

!& algeq
      f(  1)=x(  3) - 1.

!& algeq
      f(  2)=x(  4) - 0.

!& algeq
      f(  3)=x(  5) - sqrt(vx**2+vy**2)

!& algeq
      f(  4)=x(  6) - vx*x(  1)*sbase/prm(  1) - vy*x(  2)*sbase/prm(  1)

!& algeq
      f(  5)=x(  7) - vy*x(  1)*sbase/prm(  1) + vx*x(  2)*sbase/prm(  1)

!& algeq								!Aqui empiezan modelos de REPC_A
      f(  6)=x(146) + prm(  2)*x(  1)*sbase/prm(  1) - prm(  3)*x(  2)*sbase/prm(  1) - vx

!& algeq
      f(  7)=x(147) + prm(  2)*x(  2)*sbase/prm(  1) + prm(  3)*x(  1)*sbase/prm(  1) - vy

!& algeq
      f(  8)=x(148) - sqrt(x(146)**2+x(147)**2)

!& algeq
      f(  9)=x(149) - x(147)*x(  1)*sbase/prm(  1) + x(146)*x(  2)*sbase/prm(  1)

!& algeq
      f( 10)=x(150) - x(146)*x(  1)*sbase/prm(  1) - x(147)*x(  2)*sbase/prm(  1)

!& f_inj
      f( 11)=(-x(159)+vx)/max(0.05,prm( 31))
      f( 12)=(-x(160)+vy)/max(0.05,prm( 31))
      f( 13)=((vy-x(160))*x(159) - (vx-x(159))*x(160))/(2.*pi*fnom*max(0.05,prm( 31))*(x(159)**2+x(160)**2))-x(132)
      if(omega_ref=='COI')then
         f( 13)=f( 13)+omegacoi(isl(bus),0)
      else
         f( 13)=f( 13)+1.d0
      endif

!& algeq
      f( 14)=x(116) - x(  5) - prm(  5)*x(149)

!& algeq
      f( 15)=x(151) - prm(  4) + 0.5

!& swsign
      select case (z(  1))
         case(1)
            f( 16)=x(117)-x(148)
         case(2)
            f( 16)=x(117)-x(116)
      end select

!& tf1p
      f( 17)=(-x(118)+1.*x(117))

!& algeq
      f( 18)=x(119) - prm(106) + x(118)

!& tf1p
      f( 19)=(-x(120)+1.*x(149))

!& algeq
      f( 20)=x(121) - prm(113) + x(120)

!& algeq
      f( 21)=x(152) - prm(  7) + 0.5

!& swsign
      select case (z(  2))
         case(1)
            f( 22)=x(122)-x(119)
         case(2)
            f( 22)=x(122)-x(121)
      end select

!& db
      select case (z(  3))
         case(0)
            f( 23)=x(123)
         case(-1)
            f( 23)=x(123)-0.-1.*(x(122)-(-prm(  8)))
         case(1)
            f( 23)=x(123)-0.-1.*(x(122)-prm(  8))
      end select

!& lim
      select case (z(  4))
         case(0)
            f( 24)=x(124)-x(123)
         case(-1)
            f( 24)=x(124)-prm( 10)
         case(1)
            f( 24)=x(124)-prm(  9)
      end select

!& algeq
      f( 25)=x(155) - x(  5) + prm( 17)

!& swsign
      select case (z(  5))
         case(1)
            f( 26)=x(156)-x(  3)
         case(2)
            f( 26)=x(156)-x(  4)
      end select

!& algeq
      f( 27)=x(125) - x(124)*x(156)*prm( 12)

!& inlim
      if (1.>= 0.005)then
         select case (z(  6))
            case(0)
               f( 28)=x(125)
            case(1)
               f( 28)=x(126)-prm( 13)
            case(-1)
               f( 28)=x(126)-prm( 14)
         end select
      else
         select case (z(  6))
            case(0)
               f( 28)=x(125)-x(126)
            case(1)
               f( 28)=x(126)-prm( 13)
            case(-1)
               f( 28)=x(126)-prm( 14)
         end select
      endif

!& algeq
      f( 29)=x(127) - x(124)*prm( 11) - x(126)

!& lim
      select case (z(  7))
         case(0)
            f( 30)=x(128)-x(127)
         case(-1)
            f( 30)=x(128)-prm( 14)
         case(1)
            f( 30)=x(128)-prm( 13)
      end select

!& tf1p1z
      f( 31)=-x(161)+x(128)
      if (prm( 16)< 0.005)then
         f( 32)=1.*x(128)-x(129)
      else
         f( 32)=1.*(prm( 15)*x(128)+(prm( 16)-prm( 15))*x(161))-prm( 16)*x(129)
      endif

!& algeq
      f( 33)=x(154) - prm( 32) + 0.5

!& algeq
      f( 34)=x(130) - prm(104)

!& swsign
      select case (z(  8))
         case(1)
            f( 35)=x( 98)-x(129)
         case(2)
            f( 35)=x( 98)-x(130)
      end select

!& tf1p
      f( 36)=(-x(131)+1.*x(150))

!& algeq
      f( 37)=x(133) + x(132) - prm(115)

!& db
      select case (z(  9))
         case(0)
            f( 38)=x(134)
         case(-1)
            f( 38)=x(134)-0.-1.*(x(133)-prm( 19))
         case(1)
            f( 38)=x(134)-0.-1.*(x(133)-prm( 20))
      end select

!& algeq
      f( 39)=x(135) - x(134)*prm( 21)

!& algeq
      f( 40)=x(136) - x(134)*prm( 22)

!& lim
      select case (z( 10))
         case(0)
            f( 41)=x(137)-x(135)
         case(-1)
            f( 41)=x(137)-(-999999999.)
         case(1)
            f( 41)=x(137)-0.
      end select

!& lim
      select case (z( 11))
         case(0)
            f( 42)=x(138)-x(136)
         case(-1)
            f( 42)=x(138)-0.
         case(1)
            f( 42)=x(138)-999999999.
      end select

!& algeq
      f( 43)=x(139) - x(137) - x(138)

!& algeq
      f( 44)=x(140) - prm(114) + x(131) - x(139)

!& lim
      select case (z( 12))
         case(0)
            f( 45)=x(141)-x(140)
         case(-1)
            f( 45)=x(141)-prm( 24)
         case(1)
            f( 45)=x(141)-prm( 23)
      end select

!& pictllim
      select case (z( 13))
        case(0)
           f( 46)=prm( 26)*x(141)
        case(-1)
         f( 46)=x(162)-prm( 28)
        case(1)
         f( 46)=x(162)-prm( 27)
      end select
      f( 47)=prm( 25)*x(141)+x(162)-x(142)

!& lim
      select case (z( 14))
         case(0)
            f( 48)=x(143)-x(142)
         case(-1)
            f( 48)=x(143)-prm( 28)
         case(1)
            f( 48)=x(143)-prm( 27)
      end select

!& tf1p
      f( 49)=(-x(144)+1.*x(143))

!& algeq
      f( 50)=x(153) - prm( 30) + 0.5

!& algeq
      f( 51)=x(145) - prm(105)

!& swsign
      select case (z( 15))
         case(1)
            f( 52)=x( 71)-x(144)
         case(2)
            f( 52)=x( 71)-x(145)
      end select

!& algeq								!Aqui empiezan modelos de WTGT_A
      f( 53)=x( 46) - prm(116) + x( 45) + x( 43)

!& int
      if (2.d0 * prm( 33)< 0.005)then
         f( 54)=x( 46)-x( 40)
      else
         f( 54)=x( 46)
      endif

!& algeq
      f( 55)=x( 47) - x(  6)/x( 44)

!& algeq
      f( 56)=x( 48) - x( 43) + x( 47) - x( 45)

!& int
      if (2.d0 * prm( 34)< 0.005)then
         f( 57)=x( 48)-x( 41)
      else
         f( 57)=x( 48)
      endif

!& algeq
      f( 58)=x( 42) - x( 40) + x( 41)

!& algeq
      f( 59)=x( 43) - x( 42)*prm( 36)

!& int
      if (1.d0< 0.005)then
         f( 60)=x( 42)-x( 49)
      else
         f( 60)=x( 42)
      endif

!& algeq
      f( 61)=x( 45) - x( 49)*prm( 37)

!& algeq								!Salida wg del modelo WTGT_A
      f( 62)=x( 44) - prm( 35) - x( 41)

!& algeq								!Aqui empiezan modelos de REEC_A
      f( 63)=x(100) - x(  5) + prm( 38)

!& algeq
      f( 64)=x(101) - prm( 39) + x(  5)

!& swsign
      select case (z( 16))
         case(1)
            f( 65)=x(102)-x(  4)
         case(2)
            f( 65)=x(102)-x(  3)
      end select

!& swsign
      select case (z( 17))
         case(1)
            f( 66)=x(103)-x(  4)
         case(2)
            f( 66)=x(103)-x(  3)
      end select

!& algeq
      f( 67)=x( 99) - x(102) - x(103)

!& algeq
      f( 68)=x(104) - prm( 82) + 0.5

!& algeq
      f( 69)=x(105) - prm( 83) + 0.5

!& algeq
      f( 70)=x(106) - prm( 84) + 0.5

!& algeq
      f( 71)=x(107) - prm( 85) + 0.5

!& algeq
      f( 72)=x(108) - prm( 86) + 0.5

!& algeq
      f( 73)=x( 52) - prm( 78)

!& swsign
      select case (z( 18))
         case(1)
            f( 74)=x(157)-x( 23)
         case(2)
            f( 74)=x(157)-x(  4)
      end select

!& swsign
      select case (z( 19))
         case(1)
            f( 75)=x(158)-x(  4)
         case(2)
            f( 75)=x(158)-x( 18)
      end select

!& algeq
      f( 76)=x( 51) - sqrt(prm( 78)**2-x(157)**2)

!& swsign
      select case (z( 20))
         case(1)
            f( 77)=x( 53)-x( 51)
         case(2)
            f( 77)=x( 53)-x( 52)
      end select

!& min2v
      select case (z( 21))
         case(1)
            f( 78)=x( 56)-x( 58)
         case(2)
            f( 78)=x( 53)-x( 58)
      end select

!& algeq
      f( 79)=x( 59) + x( 58)

!& algeq
      f( 80)=x( 54) - sqrt(prm( 78)**2-x(158)**2)

!& swsign
      select case (z( 22))
         case(1)
            f( 81)=x( 55)-x( 52)
         case(2)
            f( 81)=x( 55)-x( 54)
      end select

!& min2v
      select case (z( 23))
         case(1)
            f( 82)=x( 57)-x( 60)
         case(2)
            f( 82)=x( 55)-x( 60)
      end select

!& int
      if (1.< 0.005)then
         f( 83)=x(110)-x(112)
      else
         f( 83)=x(110)
      endif

!& fsa
      select case (z( 24))
         case(  1)
            f( 84)=x(112) - 0.
            f( 85)=x(113) - 1.
         case(  2)
            f( 84)=x(112) - 0.
            f( 85)=x(113) - 0.
         case(  3)
            f( 84)=x(113) - 0.
            f( 85)=x(110) - 1.
      end select

!& int
      if (1.< 0.005)then
         f( 86)=x(115)-x( 61)
      else
         f( 86)=x(115)
      endif

!& fsa
      select case (z( 25))
         case(  1)
            f( 87)=x( 61) - x( 60)
         case(  2)
            f( 87)=x(115) - 0.
      end select

!& algeq
      f( 88)=x( 62) - 0.

!& tf1p
      f( 89)=(-x( 50)+1.*x(  5))

!& algeq
      f( 90)=x( 74) + x( 50) - prm( 41)

!& db
      select case (z( 26))
         case(0)
            f( 91)=x( 75)
         case(-1)
            f( 91)=x( 75)-0.-1.*(x( 74)-prm( 43))
         case(1)
            f( 91)=x( 75)-0.-1.*(x( 74)-prm( 44))
      end select

!& algeq
      f( 92)=x( 76) - x( 75)*prm( 45)

!& lim
      select case (z( 27))
         case(0)
            f( 93)=x( 77)-x( 76)
         case(-1)
            f( 93)=x( 77)-prm( 47)
         case(1)
            f( 93)=x( 77)-prm( 46)
      end select

!& int
      if (1.< 0.005)then
         f( 94)=x(109)-x(111)
      else
         f( 94)=x(109)
      endif

!& fsa
      select case (z( 28))
         case(  1)
            f( 95)=x(111) - 0.
            f( 96)=x(114) - 0.
            f( 97)=x( 78) -0.
         case(  2)
            f( 95)=x(111) - 0.
            f( 96)=x(114) - 1.
            f( 97)=x( 78) - x( 77)
         case(  3)
            f( 95)=x(114) - 2.
            f( 96)=x( 78) - prm( 81)
            f( 97)=x(109) - 1.
         case(  4)
            f( 95)=x(114) - 1.
            f( 96)=x( 78) - x( 77)
            f( 97)=x(109) - 1.
      end select

!& tf1p
      f( 98)=(-x( 97)+1.*x(  6))

!& algeq
      f( 99)=x( 96) - x( 97)*tan(prm(117))

!& swsign
      select case (z( 29))
         case(1)
            f(100)=x( 91)-x( 96)
         case(2)
            f(100)=x( 91)-x( 98)
      end select

!& lim
      select case (z( 30))
         case(0)
            f(101)=x( 90)-x( 91)
         case(-1)
            f(101)=x( 90)-prm( 49)
         case(1)
            f(101)=x( 90)-prm( 48)
      end select

!& algeq
      f(102)=x( 89) - x( 90) + x(  7)

!& algeq
      f(103)=x( 88) - x( 89)*(1.-x( 99))*prm( 53)

!& inlim
      if (1.>= 0.005)then
         select case (z( 31))
            case(0)
               f(104)=x( 88)
            case(1)
               f(104)=x( 87)-prm( 50)
            case(-1)
               f(104)=x( 87)-prm( 51)
         end select
      else
         select case (z( 31))
            case(0)
               f(104)=x( 88)-x( 87)
            case(1)
               f(104)=x( 87)-prm( 50)
            case(-1)
               f(104)=x( 87)-prm( 51)
         end select
      endif

!& algeq
      f(105)=x( 86) - x( 87) - prm( 52)*x( 89)

!& algeq
      f(106)=x( 92) - x( 91) - prm( 42)

!& swsign
      select case (z( 32))
         case(1)
            f(107)=x( 85)-x( 86)
         case(2)
            f(107)=x( 85)-x( 92)
      end select

!& lim
      select case (z( 33))
         case(0)
            f(108)=x( 84)-x( 85)
         case(-1)
            f(108)=x( 84)-prm( 51)
         case(1)
            f(108)=x( 84)-prm( 50)
      end select

!& algeq
      f(109)=x( 83) - x( 84) + x( 50)

!& algeq
      f(110)=x( 82) - x( 83)*(1.-x( 99))*prm( 55)

!& invlim
      if (1.>= 0.005)then
         select case (z( 34))
            case(0)
               f(111)=x( 82)
            case(1)
               f(111)=x( 81)-x( 58)
            case(-1)
               f(111)=x( 81)-x( 59)
         end select
      else
         select case (z( 34))
            case(0)
               f(111)=x( 82)-x( 81)
            case(1)
               f(111)=x( 81)-x( 58)
            case(-1)
               f(111)=x( 81)-x( 59)
         end select
      endif

!& algeq
      f(112)=x( 80) - x( 81) - prm( 54)*x( 83)

!& lim
      select case (z( 35))
         case(0)
            f(113)=x( 64)-x( 50)
         case(-1)
            f(113)=x( 64)-0.01
         case(1)
            f(113)=x( 64)-999999999.
      end select

!& algeq
      f(114)=x( 93) - x( 91)/x( 64)

!& algeq
      f(115)=x( 94) - (1.-x( 99))*(x( 93) - x( 95))

!& int
      if (prm( 56)< 0.005)then
         f(116)=x( 94)-x( 95)
      else
         f(116)=x( 94)
      endif

!& swsign
      select case (z( 36))
         case(1)
            f(117)=x( 79)-x( 80)
         case(2)
            f(117)=x( 79)-x( 95)
      end select

!& algeq
      f(118)=x( 73) - x( 78) - x( 79)

!& limvb
      select case (z( 37))
         case(0)
            f(119)=x( 18)-x( 73)
         case(-1)
            f(119)=x( 18)-x( 59)
         case(1)
            f(119)=x( 18)-x( 58)
      end select

!& pwlin6
      select case (z( 38))
         case (  1)
            f(120)=prm( 58)+ ( (prm( 58)-prm( 58))*(x( 50)-prm(118))/(prm( 57)-prm(118)) ) -x( 56)
         case (  2)
            f(120)=prm( 58)+ ( (prm( 60)-prm( 58))*(x( 50)-prm( 57))/(prm( 59)-prm( 57)) ) -x( 56)
         case (  3)
            f(120)=prm( 60)+ ( (prm( 62)-prm( 60))*(x( 50)-prm( 59))/(prm( 61)-prm( 59)) ) -x( 56)
         case (  4)
            f(120)=prm( 62)+ ( (prm( 64)-prm( 62))*(x( 50)-prm( 61))/(prm( 63)-prm( 61)) ) -x( 56)
         case (  5)
            f(120)=prm( 64)+ ( (prm( 64)-prm( 64))*(x( 50)-prm( 63))/(prm(119)-prm( 63)) ) -x( 56)
      end select

!& pwlin6
      select case (z( 39))
         case (  1)
            f(121)=prm( 66)+ ( (prm( 66)-prm( 66))*(x( 50)-prm(120))/(prm( 65)-prm(120)) ) -x( 57)
         case (  2)
            f(121)=prm( 66)+ ( (prm( 68)-prm( 66))*(x( 50)-prm( 65))/(prm( 67)-prm( 65)) ) -x( 57)
         case (  3)
            f(121)=prm( 68)+ ( (prm( 70)-prm( 68))*(x( 50)-prm( 67))/(prm( 69)-prm( 67)) ) -x( 57)
         case (  4)
            f(121)=prm( 70)+ ( (prm( 72)-prm( 70))*(x( 50)-prm( 69))/(prm( 71)-prm( 69)) ) -x( 57)
         case (  5)
            f(121)=prm( 72)+ ( (prm( 72)-prm( 72))*(x( 50)-prm( 71))/(prm(121)-prm( 71)) ) -x( 57)
      end select

!& algeq
      f(122)=x( 69) - (x( 71)-x( 68))/(0.000001)

!& lim
      select case (z( 40))
         case(0)
            f(123)=x( 70)-x( 69)
         case(-1)
            f(123)=x( 70)-prm( 74)
         case(1)
            f(123)=x( 70)-prm( 73)
      end select

!& int
      if (1.< 0.005)then
         f(124)=x( 70)-x( 68)
      else
         f(124)=x( 70)
      endif

!& algeq
      f(125)=x( 67) - x( 68)*x( 44)

!& swsign
      select case (z( 41))
         case(1)
            f(126)=x( 66)-x( 67)
         case(2)
            f(126)=x( 66)-x( 68)
      end select

!& algeq
      f(127)=x( 72) - (1.-x( 99))*(x( 66) - x( 65))

!& inlim
      if (prm( 77)>= 0.005)then
         select case (z( 42))
            case(0)
               f(128)=x( 72)
            case(1)
               f(128)=x( 65)-prm( 75)
            case(-1)
               f(128)=x( 65)-prm( 76)
         end select
      else
         select case (z( 42))
            case(0)
               f(128)=x( 72)-x( 65)
            case(1)
               f(128)=x( 65)-prm( 75)
            case(-1)
               f(128)=x( 65)-prm( 76)
         end select
      endif

!& algeq
      f(129)=x( 63) - x( 65)/x( 64)

!& limvb
      select case (z( 43))
         case(0)
            f(130)=x( 23)-x( 63)
         case(-1)
            f(130)=x( 23)-x( 62)
         case(1)
            f(130)=x( 23)-x( 61)
      end select

!& algeq								!Aqui empiezan modelos de REGC_A
      f(131)=x( 25) - prm( 98) + 0.5

!& algeq
      f(132)=x( 28) + 999999999.

!& algeq
      f(133)=x( 27) - 999999999.

!& tf1p2lim
      select case (z( 44))
         case(0)
            f(134)=x(163)-1.*x( 18)+x( 17)
         case(1)
            f(134)=x(163)-prm(126)*prm( 89)
         case(-1)
            f(134)=x(163)-prm(125)*prm( 89)
      end select
      select case (z( 45))
         case(0)
            f(135)=x(163)
         case(1)
            f(135)=x( 17)-prm(130)
         case(-1)
            f(135)=x( 17)-prm(131)
      end select

!& algeq
      f(136)=x( 16) - x( 17)*x(  5)

!& algeq
      f(137)=x( 13) - prm( 91)*(x(  5)-prm( 90))

!& lim
      select case (z( 46))
         case(0)
            f(138)=x( 14)-x( 13)
         case(-1)
            f(138)=x( 14)-0.
         case(1)
            f(138)=x( 14)-999999999.
      end select

!& algeq
      f(139)=x( 31) - prm( 90) + x(  5)

!& swsign
      select case (z( 47))
         case(1)
            f(140)=x( 15)-x(  4)
         case(2)
            f(140)=x( 15)-x( 14)
      end select

!& algeq
      f(141)=x( 12) - x( 16) + x( 15)

!& lim
      select case (z( 48))
         case(0)
            f(142)=x( 11)-x( 12)
         case(-1)
            f(142)=x( 11)-prm( 92)
         case(1)
            f(142)=x( 11)-999999999.
      end select

!& tf1p
      f(143)=(-x( 10)+1.*x(  5))

!& algeq								!Salida Iqf del modelo REGC_A
      f(144)=x(  8) - x( 11)/x( 10)

!& pwlin4
      select case (z( 49))
         case (  1)
            f(145)=0.+ ( (0.-0.)*(x( 10)-(-10.))/(prm( 96)-(-10.)) ) -x( 29)
         case (  2)
            f(145)=0.+ ( (prm( 97)-0.)*(x( 10)-prm( 96))/(prm( 95)-prm( 96)) ) -x( 29)
         case (  3)
            f(145)=prm( 97)+ ( (prm( 97)-prm( 97))*(x( 10)-prm( 95))/(prm(122)-prm( 95)) ) -x( 29)
      end select

!& algeq
      f(146)=x( 30) - x( 10) + prm( 95)

!& swsign
      select case (z( 50))
         case(1)
            f(147)=x( 24)-x( 27)
         case(2)
            f(147)=x( 24)-x( 29)
      end select

!& swsign
      select case (z( 51))
         case(1)
            f(148)=x( 26)-x( 24)
         case(2)
            f(148)=x( 26)-x( 27)
      end select

!& algeq
      f(149)=x( 21) - x( 23) + x( 20)

!& lim
      select case (z( 52))
         case(0)
            f(150)=x( 22)-x( 21)
         case(-1)
            f(150)=x( 22)-(-999999999.)
         case(1)
            f(150)=x( 22)-prm( 89)*prm( 99)
      end select

!& invlim
      if (prm( 89)>= 0.005)then
         select case (z( 53))
            case(0)
               f(151)=x( 22)
            case(1)
               f(151)=x( 20)-x( 26)
            case(-1)
               f(151)=x( 20)-x( 28)
         end select
      else
         select case (z( 53))
            case(0)
               f(151)=x( 22)-x( 20)
            case(1)
               f(151)=x( 20)-x( 26)
            case(-1)
               f(151)=x( 20)-x( 28)
         end select
      endif

!& pwlin4
      select case (z( 54))
         case (  1)
            f(152)=0.+ ( (0.-0.)*(x(  5)-prm(123))/(prm( 93)-prm(123)) ) -x( 19)
         case (  2)
            f(152)=0.+ ( (1.-0.)*(x(  5)-prm( 93))/(prm( 94)-prm( 93)) ) -x( 19)
         case (  3)
            f(152)=1.+ ( (1.-1.)*(x(  5)-prm( 94))/(prm(124)-prm( 94)) ) -x( 19)
      end select

!& algeq								!Salida Ipf del modelo REGC_A
      f(153)=x(  9) - x( 19)*x( 20)

!& algeq								!Aquí empiezan modelos del PLL
      f(154)=x( 32) - x( 10) + prm(100)

!& swsign
      select case (z( 55))
         case(1)
            f(155)=x( 33)-x(  3)
         case(2)
            f(155)=x( 33)-x(  4)
      end select

!& tf1p
      f(156)=(-x( 34)+1.*vx    )

!& tf1p
      f(157)=(-x( 35)+1.*vy    )

!& algeq
      f(158)=x( 36) + x( 34)*sin(x( 39)) - x( 35)*cos(x( 39))

!& pictl
      f(159)=prm(102)                                                                                                                                                                                                                                                                                                    *x( 36)
      f(160)=prm(101)                                                                                                                                                                                                                                                                                                    *x( 36)+x(164)-x( 37)

!& algeq
      f(161)=x( 38) - x( 33)*(x( 37)-prm(103))

!& int
      if (1.< 0.005)then
         f(162)=x( 38)-x( 39)
      else
         f(162)=x( 38)
      endif

!& algeq
      f(163)=x(  1) - x(  9)*cos(x( 39))*prm(  1)/sbase - x(  8)*sin(x( 39))*prm(  1)/sbase

!& algeq
      f(164)=x(  2) - x(  9)*sin(x( 39))*prm(  1)/sbase + x(  8)*cos(x( 39))*prm(  1)/sbase

!........................................................................................
   case (update_disc)

!& algeq

!& algeq

!& algeq

!& algeq

!& algeq

!& algeq								!Aqui empiezan modelos de REPC_A

!& algeq

!& algeq

!& algeq

!& algeq

!& f_inj

!& algeq

!& algeq

!& swsign
      select case (z(  1))
         case(1)
            if(x(151)<0.)then
               z(  1)=2
            endif
         case(2)
            if(x(151)>=0.)then
               z(  1)=1
            endif
      end select

!& tf1p

!& algeq

!& tf1p

!& algeq

!& algeq

!& swsign
      select case (z(  2))
         case(1)
            if(x(152)<0.)then
               z(  2)=2
            endif
         case(2)
            if(x(152)>=0.)then
               z(  2)=1
            endif
      end select

!& db
      select case (z(  3))
         case(0)
            if(x(122)>prm(  8))then
               z(  3)=1
            elseif(x(122)<(-prm(  8)))then
               z(  3)=-1
            endif
         case(-1)
            if(x(122)>(-prm(  8)))then
               z(  3)=0
            endif
         case(1)
            if(x(122)<prm(  8))then
               z(  3)=0
            endif
      end select

!& lim
      select case (z(  4))
         case(0)
            if(x(123)>prm(  9))then
               z(  4)=1
            elseif(x(123)<prm( 10))then
               z(  4)=-1
            endif
         case(-1)
            if(x(123)>prm( 10))then
               z(  4)=0
            endif
         case(1)
            if(x(123)<prm(  9))then
               z(  4)=0
            endif
      end select

!& algeq

!& swsign
      select case (z(  5))
         case(1)
            if(x(155)<0.)then
               z(  5)=2
            endif
         case(2)
            if(x(155)>=0.)then
               z(  5)=1
            endif
      end select

!& algeq

!& inlim
      if (1.>= 0.005)then
         select case (z(  6))
            case(0)
               if(x(126)<prm( 14))then
                  z(  6)=-1
                  eqtyp( 28)=0
               elseif(x(126)>prm( 13))then
                  z(  6)= 1
                  eqtyp( 28)=0
               endif
            case(1)
               if(x(125)<0.)then
                  z(  6)=0
                  eqtyp( 28)=126
               endif
            case(-1)
               if(x(125)>0.)then
                  z(  6)=0
                  eqtyp( 28)=126
               endif
         end select
      else
         select case (z(  6))
            case(0)
               if(x(126)<prm( 14))then
                  z(  6)=-1
               elseif(x(126)>prm( 13))then
                  z(  6)= 1
               endif
            case(1)
               if(x(125)<prm( 13))then
                  z(  6)=0
               endif
            case(-1)
               if(x(125)>prm( 14))then
                  z(  6)=0
               endif
         end select
      endif

!& algeq

!& lim
      select case (z(  7))
         case(0)
            if(x(127)>prm( 13))then
               z(  7)=1
            elseif(x(127)<prm( 14))then
               z(  7)=-1
            endif
         case(-1)
            if(x(127)>prm( 14))then
               z(  7)=0
            endif
         case(1)
            if(x(127)<prm( 13))then
               z(  7)=0
            endif
      end select

!& tf1p1z

!& algeq

!& algeq

!& swsign
      select case (z(  8))
         case(1)
            if(x(154)<0.)then
               z(  8)=2
            endif
         case(2)
            if(x(154)>=0.)then
               z(  8)=1
            endif
      end select

!& tf1p

!& algeq

!& db
      select case (z(  9))
         case(0)
            if(x(133)>prm( 20))then
               z(  9)=1
            elseif(x(133)<prm( 19))then
               z(  9)=-1
            endif
         case(-1)
            if(x(133)>prm( 19))then
               z(  9)=0
            endif
         case(1)
            if(x(133)<prm( 20))then
               z(  9)=0
            endif
      end select

!& algeq

!& algeq

!& lim
      select case (z( 10))
         case(0)
            if(x(135)>0.)then
               z( 10)=1
            elseif(x(135)<(-999999999.))then
               z( 10)=-1
            endif
         case(-1)
            if(x(135)>(-999999999.))then
               z( 10)=0
            endif
         case(1)
            if(x(135)<0.)then
               z( 10)=0
            endif
      end select

!& lim
      select case (z( 11))
         case(0)
            if(x(136)>999999999.)then
               z( 11)=1
            elseif(x(136)<0.)then
               z( 11)=-1
            endif
         case(-1)
            if(x(136)>0.)then
               z( 11)=0
            endif
         case(1)
            if(x(136)<999999999.)then
               z( 11)=0
            endif
      end select

!& algeq

!& algeq

!& lim
      select case (z( 12))
         case(0)
            if(x(140)>prm( 23))then
               z( 12)=1
            elseif(x(140)<prm( 24))then
               z( 12)=-1
            endif
         case(-1)
            if(x(140)>prm( 24))then
               z( 12)=0
            endif
         case(1)
            if(x(140)<prm( 23))then
               z( 12)=0
            endif
      end select

!& pictllim
      select case (z( 13))
         case(0)
            if(x(162)>prm( 27))then
                  z( 13)=1
                  eqtyp( 46)=0
            elseif(x(162)<prm( 28))then
                  z( 13)=-1
                  eqtyp( 46)=0
            endif
         case(1)
            if(prm( 26)*x(141)<0.)then
                  z( 13)=0
                  eqtyp( 46)=162
            endif
         case(-1)
            if(prm( 26)*x(141)>0.)then
                  z( 13)=0
                  eqtyp( 46)=162
            endif
      end select

!& lim
      select case (z( 14))
         case(0)
            if(x(142)>prm( 27))then
               z( 14)=1
            elseif(x(142)<prm( 28))then
               z( 14)=-1
            endif
         case(-1)
            if(x(142)>prm( 28))then
               z( 14)=0
            endif
         case(1)
            if(x(142)<prm( 27))then
               z( 14)=0
            endif
      end select

!& tf1p

!& algeq

!& algeq

!& swsign
      select case (z( 15))
         case(1)
            if(x(153)<0.)then
               z( 15)=2
            endif
         case(2)
            if(x(153)>=0.)then
               z( 15)=1
            endif
      end select

!& algeq								!Aqui empiezan modelos de WTGT_A

!& int

!& algeq

!& algeq

!& int

!& algeq

!& algeq

!& int

!& algeq

!& algeq								!Salida wg del modelo WTGT_A

!& algeq								!Aqui empiezan modelos de REEC_A

!& algeq

!& swsign
      select case (z( 16))
         case(1)
            if(x(100)<0.)then
               z( 16)=2
            endif
         case(2)
            if(x(100)>=0.)then
               z( 16)=1
            endif
      end select

!& swsign
      select case (z( 17))
         case(1)
            if(x(101)<0.)then
               z( 17)=2
            endif
         case(2)
            if(x(101)>=0.)then
               z( 17)=1
            endif
      end select

!& algeq

!& algeq

!& algeq

!& algeq

!& algeq

!& algeq

!& algeq

!& swsign
      select case (z( 18))
         case(1)
            if(x(107)<0.)then
               z( 18)=2
            endif
         case(2)
            if(x(107)>=0.)then
               z( 18)=1
            endif
      end select

!& swsign
      select case (z( 19))
         case(1)
            if(x(107)<0.)then
               z( 19)=2
            endif
         case(2)
            if(x(107)>=0.)then
               z( 19)=1
            endif
      end select

!& algeq

!& swsign
      select case (z( 20))
         case(1)
            if(x(107)<0.)then
               z( 20)=2
            endif
         case(2)
            if(x(107)>=0.)then
               z( 20)=1
            endif
      end select

!& min2v
      select case (z( 21))
         case(1)
            if(x( 56)>x( 53))then
               z( 21)=2
            endif
         case(2)
            if(x( 53)>x( 56))then
               z( 21)=1
            endif
      end select

!& algeq

!& algeq

!& swsign
      select case (z( 22))
         case(1)
            if(x(107)<0.)then
               z( 22)=2
            endif
         case(2)
            if(x(107)>=0.)then
               z( 22)=1
            endif
      end select

!& min2v
      select case (z( 23))
         case(1)
            if(x( 57)>x( 55))then
               z( 23)=2
            endif
         case(2)
            if(x( 55)>x( 57))then
               z( 23)=1
            endif
      end select

!& int

!& fsa
      select case (z( 24))
         case(  1)
            if(abs(x( 99)-1.) < 0.1)then
               z( 24)=  2
            endif
         case(  2)
            if(abs(x( 99)-1.) > 0.1)then
               z( 24)=  3
            endif
         case(  3)
            if(abs(prm( 80)) < x(112))then
               z( 24)=  1
            endif
      end select

!& int

!& fsa
      select case (z( 25))
         case(  1)
            if(abs(x(113)-1.) > 0.1)then
               z( 25)=  2
            endif
         case(  2)
            if(abs(x(113)-1.) < 0.1)then
               z( 25)=  1
            endif
      end select

!& algeq

!& tf1p

!& algeq

!& db
      select case (z( 26))
         case(0)
            if(x( 74)>prm( 44))then
               z( 26)=1
            elseif(x( 74)<prm( 43))then
               z( 26)=-1
            endif
         case(-1)
            if(x( 74)>prm( 43))then
               z( 26)=0
            endif
         case(1)
            if(x( 74)<prm( 44))then
               z( 26)=0
            endif
      end select

!& algeq

!& lim
      select case (z( 27))
         case(0)
            if(x( 76)>prm( 46))then
               z( 27)=1
            elseif(x( 76)<prm( 47))then
               z( 27)=-1
            endif
         case(-1)
            if(x( 76)>prm( 47))then
               z( 27)=0
            endif
         case(1)
            if(x( 76)<prm( 46))then
               z( 27)=0
            endif
      end select

!& int

!& fsa
      select case (z( 28))
         case(  1)
            if(abs(x( 99)-1.) < 0.1)then
               z( 28)=  2
            endif
         case(  2)
            if(prm( 79) >= 0. .AND. abs(x( 99)-1.) > 0.1)then
               z( 28)=  3
            endif
            if(prm( 79) < 0. .AND. abs(x( 99)-1.) > 0.1)then
               z( 28)=  4
            endif
         case(  3)
            if(abs(prm( 79)) < x(111))then
               z( 28)=  1
            endif
         case(  4)
            if(abs(prm( 79)) < x(111))then
               z( 28)=  1
            endif
      end select

!& tf1p

!& algeq

!& swsign
      select case (z( 29))
         case(1)
            if(x(104)<0.)then
               z( 29)=2
            endif
         case(2)
            if(x(104)>=0.)then
               z( 29)=1
            endif
      end select

!& lim
      select case (z( 30))
         case(0)
            if(x( 91)>prm( 48))then
               z( 30)=1
            elseif(x( 91)<prm( 49))then
               z( 30)=-1
            endif
         case(-1)
            if(x( 91)>prm( 49))then
               z( 30)=0
            endif
         case(1)
            if(x( 91)<prm( 48))then
               z( 30)=0
            endif
      end select

!& algeq

!& algeq

!& inlim
      if (1.>= 0.005)then
         select case (z( 31))
            case(0)
               if(x( 87)<prm( 51))then
                  z( 31)=-1
                  eqtyp(104)=0
               elseif(x( 87)>prm( 50))then
                  z( 31)= 1
                  eqtyp(104)=0
               endif
            case(1)
               if(x( 88)<0.)then
                  z( 31)=0
                  eqtyp(104)= 87
               endif
            case(-1)
               if(x( 88)>0.)then
                  z( 31)=0
                  eqtyp(104)= 87
               endif
         end select
      else
         select case (z( 31))
            case(0)
               if(x( 87)<prm( 51))then
                  z( 31)=-1
               elseif(x( 87)>prm( 50))then
                  z( 31)= 1
               endif
            case(1)
               if(x( 88)<prm( 50))then
                  z( 31)=0
               endif
            case(-1)
               if(x( 88)>prm( 51))then
                  z( 31)=0
               endif
         end select
      endif

!& algeq

!& algeq

!& swsign
      select case (z( 32))
         case(1)
            if(x(105)<0.)then
               z( 32)=2
            endif
         case(2)
            if(x(105)>=0.)then
               z( 32)=1
            endif
      end select

!& lim
      select case (z( 33))
         case(0)
            if(x( 85)>prm( 50))then
               z( 33)=1
            elseif(x( 85)<prm( 51))then
               z( 33)=-1
            endif
         case(-1)
            if(x( 85)>prm( 51))then
               z( 33)=0
            endif
         case(1)
            if(x( 85)<prm( 50))then
               z( 33)=0
            endif
      end select

!& algeq

!& algeq

!& invlim
      if (1.>= 0.005)then
         select case (z( 34))
            case(0)
               if(x( 81)<x( 59))then
                  z( 34)=-1
                  eqtyp(111)=0
               elseif(x( 81)>x( 58))then
                  z( 34)= 1
                  eqtyp(111)=0
               endif
            case(1)
               if(x( 82)<0.)then
                  z( 34)=0
                  eqtyp(111)= 81
               endif
            case(-1)
               if(x( 82)>0.)then
                  z( 34)=0
                  eqtyp(111)= 81
               endif
         end select
      else
         select case (z( 34))
            case(0)
               if(x( 81)<x( 59))then
                  z( 34)=-1
               elseif(x( 81)>x( 58))then
                  z( 34)= 1
               endif
            case(1)
               if(x( 82)<x( 58))then
                  z( 34)=0
               endif
            case(-1)
               if(x( 82)>x( 59))then
                  z( 34)=0
               endif
         end select
      endif

!& algeq

!& lim
      select case (z( 35))
         case(0)
            if(x( 50)>999999999.)then
               z( 35)=1
            elseif(x( 50)<0.01)then
               z( 35)=-1
            endif
         case(-1)
            if(x( 50)>0.01)then
               z( 35)=0
            endif
         case(1)
            if(x( 50)<999999999.)then
               z( 35)=0
            endif
      end select

!& algeq

!& algeq

!& int

!& swsign
      select case (z( 36))
         case(1)
            if(x(106)<0.)then
               z( 36)=2
            endif
         case(2)
            if(x(106)>=0.)then
               z( 36)=1
            endif
      end select

!& algeq

!& limvb
      select case (z( 37))
         case(0)
            if(x( 73)>x( 58))then
               z( 37)=1
            elseif(x( 73)<x( 59))then
               z( 37)=-1
            endif
         case(-1)
            if(x( 73)>x( 59))then
               z( 37)=0
            endif
         case(1)
            if(x( 73)<x( 58))then
               z( 37)=0
            endif
      end select

!& pwlin6
      if(x( 50)<prm(118))then
         z( 38)=1
      elseif(x( 50)>=prm(119))then
         z( 38)=  5
      elseif(prm(118)<=x( 50) .and. x( 50)<prm( 57))then
         z( 38)=  1
      elseif(prm( 57)<=x( 50) .and. x( 50)<prm( 59))then
         z( 38)=  2
      elseif(prm( 59)<=x( 50) .and. x( 50)<prm( 61))then
         z( 38)=  3
      elseif(prm( 61)<=x( 50) .and. x( 50)<prm( 63))then
         z( 38)=  4
      elseif(prm( 63)<=x( 50) .and. x( 50)<prm(119))then
         z( 38)=  5
      endif

!& pwlin6
      if(x( 50)<prm(120))then
         z( 39)=1
      elseif(x( 50)>=prm(121))then
         z( 39)=  5
      elseif(prm(120)<=x( 50) .and. x( 50)<prm( 65))then
         z( 39)=  1
      elseif(prm( 65)<=x( 50) .and. x( 50)<prm( 67))then
         z( 39)=  2
      elseif(prm( 67)<=x( 50) .and. x( 50)<prm( 69))then
         z( 39)=  3
      elseif(prm( 69)<=x( 50) .and. x( 50)<prm( 71))then
         z( 39)=  4
      elseif(prm( 71)<=x( 50) .and. x( 50)<prm(121))then
         z( 39)=  5
      endif

!& algeq

!& lim
      select case (z( 40))
         case(0)
            if(x( 69)>prm( 73))then
               z( 40)=1
            elseif(x( 69)<prm( 74))then
               z( 40)=-1
            endif
         case(-1)
            if(x( 69)>prm( 74))then
               z( 40)=0
            endif
         case(1)
            if(x( 69)<prm( 73))then
               z( 40)=0
            endif
      end select

!& int

!& algeq

!& swsign
      select case (z( 41))
         case(1)
            if(x(108)<0.)then
               z( 41)=2
            endif
         case(2)
            if(x(108)>=0.)then
               z( 41)=1
            endif
      end select

!& algeq

!& inlim
      if (prm( 77)>= 0.005)then
         select case (z( 42))
            case(0)
               if(x( 65)<prm( 76))then
                  z( 42)=-1
                  eqtyp(128)=0
               elseif(x( 65)>prm( 75))then
                  z( 42)= 1
                  eqtyp(128)=0
               endif
            case(1)
               if(x( 72)<0.)then
                  z( 42)=0
                  eqtyp(128)= 65
               endif
            case(-1)
               if(x( 72)>0.)then
                  z( 42)=0
                  eqtyp(128)= 65
               endif
         end select
      else
         select case (z( 42))
            case(0)
               if(x( 65)<prm( 76))then
                  z( 42)=-1
               elseif(x( 65)>prm( 75))then
                  z( 42)= 1
               endif
            case(1)
               if(x( 72)<prm( 75))then
                  z( 42)=0
               endif
            case(-1)
               if(x( 72)>prm( 76))then
                  z( 42)=0
               endif
         end select
      endif

!& algeq

!& limvb
      select case (z( 43))
         case(0)
            if(x( 63)>x( 61))then
               z( 43)=1
            elseif(x( 63)<x( 62))then
               z( 43)=-1
            endif
         case(-1)
            if(x( 63)>x( 62))then
               z( 43)=0
            endif
         case(1)
            if(x( 63)<x( 61))then
               z( 43)=0
            endif
      end select

!& algeq								!Aqui empiezan modelos de REGC_A

!& algeq

!& algeq

!& tf1p2lim
      select case (z( 44))
         case(0)
            if(x(163)>prm(126)*prm( 89))then
               z( 44)=1
            elseif(x(163)<prm(125)*prm( 89))then
               z( 44)=-1
            endif
         case(1)
            if(1.*x( 18)-x( 17)<prm(126)*prm( 89))then
               z( 44)= 0
            endif
         case(-1)
            if(1.*x( 18)-x( 17)>prm(125)*prm( 89))then
               z( 44)= 0
            endif
      end select
      select case (z( 45))
         case(0)
            if(x( 17)>prm(130))then
               z( 45)=1
               eqtyp(135)=0
            elseif(x( 17)<prm(131))then
               z( 45)=-1
               eqtyp(135)=0
            endif
         case(1)
            if (x(163)<0.)then
               z( 45)= 0
               eqtyp(135)= 17
            endif
         case(-1)
            if(x(163)>0.)then
               z( 45)= 0
               eqtyp(135)= 17
            endif
      end select

!& algeq

!& algeq

!& lim
      select case (z( 46))
         case(0)
            if(x( 13)>999999999.)then
               z( 46)=1
            elseif(x( 13)<0.)then
               z( 46)=-1
            endif
         case(-1)
            if(x( 13)>0.)then
               z( 46)=0
            endif
         case(1)
            if(x( 13)<999999999.)then
               z( 46)=0
            endif
      end select

!& algeq

!& swsign
      select case (z( 47))
         case(1)
            if(x( 31)<0.)then
               z( 47)=2
            endif
         case(2)
            if(x( 31)>=0.)then
               z( 47)=1
            endif
      end select

!& algeq

!& lim
      select case (z( 48))
         case(0)
            if(x( 12)>999999999.)then
               z( 48)=1
            elseif(x( 12)<prm( 92))then
               z( 48)=-1
            endif
         case(-1)
            if(x( 12)>prm( 92))then
               z( 48)=0
            endif
         case(1)
            if(x( 12)<999999999.)then
               z( 48)=0
            endif
      end select

!& tf1p

!& algeq								!Salida Iqf del modelo REGC_A

!& pwlin4
      if(x( 10)<(-10.))then
         z( 49)=1
      elseif(x( 10)>=prm(122))then
         z( 49)=  3
      elseif((-10.)<=x( 10) .and. x( 10)<prm( 96))then
         z( 49)=  1
      elseif(prm( 96)<=x( 10) .and. x( 10)<prm( 95))then
         z( 49)=  2
      elseif(prm( 95)<=x( 10) .and. x( 10)<prm(122))then
         z( 49)=  3
      endif

!& algeq

!& swsign
      select case (z( 50))
         case(1)
            if(x( 30)<0.)then
               z( 50)=2
            endif
         case(2)
            if(x( 30)>=0.)then
               z( 50)=1
            endif
      end select

!& swsign
      select case (z( 51))
         case(1)
            if(x( 25)<0.)then
               z( 51)=2
            endif
         case(2)
            if(x( 25)>=0.)then
               z( 51)=1
            endif
      end select

!& algeq

!& lim
      select case (z( 52))
         case(0)
            if(x( 21)>prm( 89)*prm( 99))then
               z( 52)=1
            elseif(x( 21)<(-999999999.))then
               z( 52)=-1
            endif
         case(-1)
            if(x( 21)>(-999999999.))then
               z( 52)=0
            endif
         case(1)
            if(x( 21)<prm( 89)*prm( 99))then
               z( 52)=0
            endif
      end select

!& invlim
      if (prm( 89)>= 0.005)then
         select case (z( 53))
            case(0)
               if(x( 20)<x( 28))then
                  z( 53)=-1
                  eqtyp(151)=0
               elseif(x( 20)>x( 26))then
                  z( 53)= 1
                  eqtyp(151)=0
               endif
            case(1)
               if(x( 22)<0.)then
                  z( 53)=0
                  eqtyp(151)= 20
               endif
            case(-1)
               if(x( 22)>0.)then
                  z( 53)=0
                  eqtyp(151)= 20
               endif
         end select
      else
         select case (z( 53))
            case(0)
               if(x( 20)<x( 28))then
                  z( 53)=-1
               elseif(x( 20)>x( 26))then
                  z( 53)= 1
               endif
            case(1)
               if(x( 22)<x( 26))then
                  z( 53)=0
               endif
            case(-1)
               if(x( 22)>x( 28))then
                  z( 53)=0
               endif
         end select
      endif

!& pwlin4
      if(x(  5)<prm(123))then
         z( 54)=1
      elseif(x(  5)>=prm(124))then
         z( 54)=  3
      elseif(prm(123)<=x(  5) .and. x(  5)<prm( 93))then
         z( 54)=  1
      elseif(prm( 93)<=x(  5) .and. x(  5)<prm( 94))then
         z( 54)=  2
      elseif(prm( 94)<=x(  5) .and. x(  5)<prm(124))then
         z( 54)=  3
      endif

!& algeq								!Salida Ipf del modelo REGC_A

!& algeq								!Aquí empiezan modelos del PLL

!& swsign
      select case (z( 55))
         case(1)
            if(x( 32)<0.)then
               z( 55)=2
            endif
         case(2)
            if(x( 32)>=0.)then
               z( 55)=1
            endif
      end select

!& tf1p

!& tf1p

!& algeq

!& pictl

!& algeq

!& int

!& algeq

!& algeq
   end select

end subroutine inj_WT4
