!  MODEL NAME : inj_BESS                
!  MODEL DESCRIPTION FILE : BESS.txt
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
!       prm( 33)=  vdip			!Aqui empiezan los parametros del modelo REEC_C
!       prm( 34)=  vup
!       prm( 35)=  Trv
!       prm( 36)=  vref0
!       prm( 37)=  dbd1			!Puede valer 0 o un valor negativo
!       prm( 38)=  dbd2			!Puede valer 0 o un valor positivo
!       prm( 39)=  kqv
!       prm( 40)=  Iqh1
!       prm( 41)=  Iql1
!       prm( 42)=  qmax			! corresponde al Qmax del modelo REEC_C
!       prm( 43)=  qmin			! corresponde al Qmin del modelo REEC_C
!       prm( 44)=  vmax
!       prm( 45)=  vmin
!       prm( 46)=  kqp
!       prm( 47)=  kqi
!       prm( 48)=  kvp
!       prm( 49)=  kvi
!       prm( 50)=  Tiq
!       prm( 51)=  vq1
!       prm( 52)=  Iq1
!       prm( 53)=  vq2
!       prm( 54)=  Iq2
!       prm( 55)=  vq3
!       prm( 56)=  Iq3
!       prm( 57)=  vq4
!       prm( 58)=  Iq4
!       prm( 59)=  vp1
!       prm( 60)=  Ip1
!       prm( 61)=  vp2
!       prm( 62)=  Ip2
!       prm( 63)=  vp3
!       prm( 64)=  Ip3
!       prm( 65)=  vp4
!       prm( 66)=  Ip4
!       prm( 67)=  Paux
!       prm( 68)=  CapBat			!Debe estar en MWh
!       prm( 69)=  SOCini			!Se asume que al inicio la bateria no esta llena ni vacia
!       prm( 70)=  SOCmax
!       prm( 71)=  SOCmin
!       prm( 72)=  dPmax
!       prm( 73)=  dPmin
!       prm( 74)=  pmax			! corresponde al Pmax del modelo REEC_C
!       prm( 75)=  pmin			! corresponde al Pmin del modelo REEC_C
!       prm( 76)=  Tpord
!       prm( 77)=  Imax
!       prm( 78)=  PFFlag
!       prm( 79)=  vFlag
!       prm( 80)=  QFlag
!       prm( 81)=  PQFlag
!       prm( 82)=  Iqrmax			!Aqui empiezan los parametros del modelo REGC_A
!       prm( 83)=  Iqrmin
!       prm( 84)=  Tg
!       prm( 85)=  vtmax			!Correspone a volim que sale en el diagrama
!       prm( 86)=  accel			!Corresponde a khv que sale en el diagrama
!       prm( 87)=  QMIN			!Corresponde a Iolim que sale en el diagrama
!       prm( 88)=  lvpnt0
!       prm( 89)=  lvpnt1
!       prm( 90)=  Brkpt
!       prm( 91)=  zerox
!       prm( 92)=  Lvpl1
!       prm( 93)=  Lvplsw
!       prm( 94)=  rrpwr
!       prm( 95)=  vPLL			!Aquí empiezan los parámetros del modelo del PLL
!       prm( 96)=  kpPLL
!       prm( 97)=  kiPLL
!       prm( 98)=  wrefPLL
!  Parameters :
!       prm( 99)=  Qextini  La definicion de este parametro se debe cambiar directamente en el f90. Se debe definir justo despues de inicializar Qext y debe tomar este valor inicial de Qext.
!       prm(100)=  Prefini  La definicion de este parametro se debe cambiar directamente en el f90. Se debe definir justo despues de inicializar Pref y debe tomar este valor inicial de Pref.
!       prm(101)=  vref  La definicion de este parametro se debe cambiar directamente en el f90. Se debe definir justo despues de inicializar Y2 y debe tomar este valor inicial de Y2.
!       prm(102)=  vto  
!       prm(103)=  Peo  
!       prm(104)=  Qgeno  
!       prm(105)=  vconxo  Aqui empiezan parametros de REPC_A
!       prm(106)=  vconyo  
!       prm(107)=  vcono  
!       prm(108)=  Qref  
!       prm(109)=  Plantpref  
!       prm(110)=  Freqref  
!       prm(111)=  pfaref  Aqui empiezan parametros de REEC_C
!       prm(112)=  vq1Left  
!       prm(113)=  vq4Right  
!       prm(114)=  vp1Left  
!       prm(115)=  vp4Right  
!       prm(116)=  BrkptRight  Aqui empiezan parametros de REGC_A
!       prm(117)=  lvpnt0Left  
!       prm(118)=  lvpnt1Rght  
!       prm(119)=  IqrminF  
!       prm(120)=  IqrmaxF  
!       prm(121)=  vx0  Aqui empiezan parametros del PLL
!       prm(122)=  vy0  
!       prm(123)=  PLLPhsAgl0  
!       prm(124)=  UPlim  
!       prm(125)=  DOWNlim  
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
!       x( 40)=  Pgen                  Aqui empiezan estados de REEC_C
!       x( 41)=  PgenKW                
!       x( 42)=  x49                   
!       x( 43)=  x50                   
!       x( 44)=  SOC                   
!       x( 45)=  FlagBatFull           
!       x( 46)=  BatFull               
!       x( 47)=  FlagBatEmpty          
!       x( 48)=  BatEmpty              
!       x( 49)=  vtfilt                
!       x( 50)=  C                     
!       x( 51)=  IMAX                  
!       x( 52)=  A                     
!       x( 53)=  D                     
!       x( 54)=  B                     
!       x( 55)=  VDL1                  
!       x( 56)=  VDL2                  
!       x( 57)=  Iqmax                 
!       x( 58)=  Iqmin                 
!       x( 59)=  Ipmaxprev             
!       x( 60)=  Ipmax                 
!       x( 61)=  Ipmin                 
!       x( 62)=  x48                   
!       x( 63)=  x47                   
!       x( 64)=  x44                   
!       x( 65)=  Pord                  
!       x( 66)=  x45                   
!       x( 67)=  Z20                   
!       x( 68)=  Z21                   
!       x( 69)=  Pref                  
!       x( 70)=  x46                   
!       x( 71)=  x43                   
!       x( 72)=  x26                   
!       x( 73)=  verr                  
!       x( 74)=  Iqv                   
!       x( 75)=  Iqinj                 
!       x( 76)=  x42                   
!       x( 77)=  x38                   
!       x( 78)=  x52                   
!       x( 79)=  x37                   
!       x( 80)=  x36                   
!       x( 81)=  x35                   
!       x( 82)=  x34                   
!       x( 83)=  x33                   
!       x( 84)=  x51                   
!       x( 85)=  x32                   
!       x( 86)=  x31                   
!       x( 87)=  x30                   
!       x( 88)=  x29                   
!       x( 89)=  x39                   
!       x( 90)=  x40                   
!       x( 91)=  x41                   
!       x( 92)=  x28                   
!       x( 93)=  x27                   
!       x( 94)=  Qext                  
!       x( 95)=  voltageDip            
!       x( 96)=  FlagDip               
!       x( 97)=  FlagUp                
!       x( 98)=  Fdip                  
!       x( 99)=  Fup                   
!       x(100)=  PFFlagi               
!       x(101)=  vFlagi                
!       x(102)=  QFlagi                
!       x(103)=  PQFlagi               
!       x(104)=  Y21                   Aqui empiezan estados de REPC_A
!       x(105)=  Y1                    
!       x(106)=  Y2                    
!       x(107)=  Y22                   
!       x(108)=  Y3                    
!       x(109)=  Y23                   
!       x(110)=  Y4                    
!       x(111)=  Y5                    
!       x(112)=  Y6                    
!       x(113)=  Y24                   
!       x(114)=  Y7                    
!       x(115)=  Y26                   
!       x(116)=  Y8                    
!       x(117)=  Y25                   
!       x(118)=  QextiniE              
!       x(119)=  Y9                    
!       x(120)=  Freq                  
!       x(121)=  Y10                   
!       x(122)=  Y11                   
!       x(123)=  Y12                   
!       x(124)=  Y13                   
!       x(125)=  Y14                   
!       x(126)=  Y15                   
!       x(127)=  Y16                   
!       x(128)=  Y17                   
!       x(129)=  Y18                   
!       x(130)=  Y27                   
!       x(131)=  Y19                   
!       x(132)=  Y20                   
!       x(133)=  PrefiniE              
!       x(134)=  vconx                 
!       x(135)=  vcony                 
!       x(136)=  vcon                  
!       x(137)=  Qbranch               
!       x(138)=  Pbranch               
!       x(139)=  vcompFlagi            
!       x(140)=  RefFlagi              
!       x(141)=  FreqFlagi             
!       x(142)=  QextFlagi             
!       x(143)=  DeltaVfrz             
!       x(144)=  FreezeVfrz            
!       x(145)=  Cp                    
!       x(146)=  Dp                    

!.........................................................................................................

subroutine inj_BESS(nb,name,mode,nbxvar,nbzvar,nbdata,nbaddpar,prm,parname,nbobs, &
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
      nbdata= 98
      nbaddpar= 27
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
      parname( 33)='vdip'
      parname( 34)='vup'
      parname( 35)='Trv'
      parname( 36)='vref0'
      parname( 37)='dbd1'
      parname( 38)='dbd2'
      parname( 39)='kqv'
      parname( 40)='Iqh1'
      parname( 41)='Iql1'
      parname( 42)='qmax'
      parname( 43)='qmin'
      parname( 44)='vmax'
      parname( 45)='vmin'
      parname( 46)='kqp'
      parname( 47)='kqi'
      parname( 48)='kvp'
      parname( 49)='kvi'
      parname( 50)='Tiq'
      parname( 51)='vq1'
      parname( 52)='Iq1'
      parname( 53)='vq2'
      parname( 54)='Iq2'
      parname( 55)='vq3'
      parname( 56)='Iq3'
      parname( 57)='vq4'
      parname( 58)='Iq4'
      parname( 59)='vp1'
      parname( 60)='Ip1'
      parname( 61)='vp2'
      parname( 62)='Ip2'
      parname( 63)='vp3'
      parname( 64)='Ip3'
      parname( 65)='vp4'
      parname( 66)='Ip4'
      parname( 67)='Paux'
      parname( 68)='CapBat'
      parname( 69)='SOCini'
      parname( 70)='SOCmax'
      parname( 71)='SOCmin'
      parname( 72)='dPmax'
      parname( 73)='dPmin'
      parname( 74)='pmax'
      parname( 75)='pmin'
      parname( 76)='Tpord'
      parname( 77)='Imax'
      parname( 78)='PFFlag'
      parname( 79)='vFlag'
      parname( 80)='QFlag'
      parname( 81)='PQFlag'
      parname( 82)='Iqrmax'
      parname( 83)='Iqrmin'
      parname( 84)='Tg'
      parname( 85)='vtmax'
      parname( 86)='accel'
      parname( 87)='QMIN'
      parname( 88)='lvpnt0'
      parname( 89)='lvpnt1'
      parname( 90)='Brkpt'
      parname( 91)='zerox'
      parname( 92)='Lvpl1'
      parname( 93)='Lvplsw'
      parname( 94)='rrpwr'
      parname( 95)='vPLL'
      parname( 96)='kpPLL'
      parname( 97)='kiPLL'
      parname( 98)='wrefPLL'
      parname( 99)='Qextini'
      parname(100)='Prefini'
      parname(101)='vref'
      parname(102)='vto'
      parname(103)='Peo'
      parname(104)='Qgeno'
      parname(105)='vconxo'
      parname(106)='vconyo'
      parname(107)='vcono'
      parname(108)='Qref'
      parname(109)='Plantpref'
      parname(110)='Freqref'
      parname(111)='pfaref'
      parname(112)='vq1Left'
      parname(113)='vq4Right'
      parname(114)='vp1Left'
      parname(115)='vp4Right'
      parname(116)='BrkptRight'
      parname(117)='lvpnt0Left'
      parname(118)='lvpnt1Rght'
      parname(119)='IqrminF'
      parname(120)='IqrmaxF'
      parname(121)='vx0'
      parname(122)='vy0'
      parname(123)='PLLPhsAgl0'
      parname(124)='UPlim'
      parname(125)='DOWNlim'
      adix=  1
      adiy=  2
      nbxvar=152
      nbzvar= 54

!........................................................................................
   case (define_obs)
      nbobs= 29
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
      obsname( 13)='Iqinj'
      obsname( 14)='Iqcmd'
      obsname( 15)='Ipcmd'
      obsname( 16)='Iqmax'
      obsname( 17)='Iqmin'
      obsname( 18)='Ipmax'
      obsname( 19)='Ipmin'
      obsname( 20)='Iqf'
      obsname( 21)='Ipf'
      obsname( 22)='Iq'
      obsname( 23)='Ip'
      obsname( 24)='SOC'
      obsname( 25)='pfaref'
      obsname( 26)='Y17'
      obsname( 27)='Y18'
      obsname( 28)='Y19'
      obsname( 29)='Y27'

!........................................................................................
   case (evaluate_obs)
      obs(  1)=x(  7)              
      obs(  2)=x(  6)              
      obs(  3)=x(  5)              
      obs(  4)=x( 94)              
      obs(  5)=x( 69)              
      obs(  6)=x(120)              
      obs(  7)=x(136)              
      obs(  8)=prm(101)            
      obs(  9)=x(137)              
      obs( 10)=prm(108)            
      obs( 11)=x(138)              
      obs( 12)=prm(109)            
      obs( 13)=x( 75)              
      obs( 14)=x( 18)              
      obs( 15)=x( 23)              
      obs( 16)=x( 57)              
      obs( 17)=x( 58)              
      obs( 18)=x( 60)              
      obs( 19)=x( 61)              
      obs( 20)=x(  8)              
      obs( 21)=x(  9)              
      obs( 22)=x( 17)              
      obs( 23)=x( 20)              
      obs( 24)=x( 44)              
      obs( 25)=prm(111)            
      obs( 26)=x( 128)              
      obs( 27)=x( 129)              
      obs( 28)=x( 131)   
      obs( 29)=x( 130)   
       
     
!........................................................................................
   case (initialize)

!Qextini = 0.		
!      prm( 99)= 0.		

!Prefini = 0.		
!      prm(100)= 0.		

!vref = 0.			
!      prm(101)= 0.			

!vto = sqrt([vx]**2+[vy]**2)
      prm(102)= sqrt(vx**2+vy**2)

!Peo = [vx]*[ix]*sbase/{SNOM} + [vy]*[iy]*sbase/{SNOM}
      prm(103)= vx*ix*sbase/prm(  1) + vy*iy*sbase/prm(  1)

!Qgeno = [vy]*[ix]*sbase/{SNOM} - [vx]*[iy]*sbase/{SNOM}
      prm(104)= vy*ix*sbase/prm(  1) - vx*iy*sbase/prm(  1)

!vconxo = [vx] - {Rc}*[ix]*sbase/{SNOM} + {Xc}*[iy]*sbase/{SNOM}		
      prm(105)= vx - prm(  2)*ix*sbase/prm(  1) + prm(  3)*iy*sbase/prm(  1)		

!vconyo = [vy] - {Rc}*[iy]*sbase/{SNOM} - {Xc}*[ix]*sbase/{SNOM}
      prm(106)= vy - prm(  2)*iy*sbase/prm(  1) - prm(  3)*ix*sbase/prm(  1)

!vcono = sqrt({vconxo}**2+{vconyo}**2)
      prm(107)= sqrt(prm(105)**2+prm(106)**2)

!Qref = {vconyo}*[ix]*sbase/{SNOM} - {vconxo}*[iy]*sbase/{SNOM}	
      prm(108)= prm(106)*ix*sbase/prm(  1) - prm(105)*iy*sbase/prm(  1)	

!Plantpref = {vconxo}*[ix]*sbase/{SNOM} + {vconyo}*[iy]*sbase/{SNOM}
      prm(109)= prm(105)*ix*sbase/prm(  1) + prm(106)*iy*sbase/prm(  1)

!Freqref = 1.d0
      prm(110)= 1.d0

!pfaref = atan({Qgeno}/{Peo})										
      prm(111)= atan(prm(104)/prm(103))										

!vq1Left = {vq1} - 1.
      prm(112)= prm( 51) - 1.

!vq4Right = {vq4} + 1.
      prm(113)= prm( 57) + 1.

!vp1Left = {vp1} - 1.
      prm(114)= prm( 59) - 1.

!vp4Right = {vp4} + 1.
      prm(115)= prm( 65) + 1.

!BrkptRight = {Brkpt} + 1.											
      prm(116)= prm( 90) + 1.											

!lvpnt0Left = {lvpnt0} - 1.
      prm(117)= prm( 88) - 1.

!lvpnt1Rght = {lvpnt1} + 1.
      prm(118)= prm( 89) + 1.

!IqrminF = fcnIqrsBattery({Iqrmin},{Iqrmax},{Qgeno},'Iqrmin')
      prm(119)= fcnIqrsBattery(prm( 83),prm( 82),prm(104),'Iqrmin')

!IqrmaxF = fcnIqrsBattery({Iqrmin},{Iqrmax},{Qgeno},'Iqrmax')
      prm(120)= fcnIqrsBattery(prm( 83),prm( 82),prm(104),'Iqrmax')

!vx0 = [vx]				
      prm(121)= vx				

!vy0 = [vy]
      prm(122)= vy

!PLLPhsAgl0 = atan([vy]/[vx])
      prm(123)= atan(vy/vx)

!UPlim = 999999999.
      prm(124)= 999999999.

!DOWNlim = -999999999.
      prm(125)= -999999999.

!one =  1.
      x(  3)= 1.

!zero =  0.
      x(  4)= 0.

!vt =  {vto}
      x(  5)= prm(102)

!Pe =  {Peo}
      x(  6)= prm(103)

!Qgen =  {Qgeno}
      x(  7)= prm(104)

!Iqf =  [ix]*sbase/{SNOM}*sin({PLLPhsAgl0}) - [iy]*sbase/{SNOM}*cos({PLLPhsAgl0})	
      x(  8)= x(  1)*sbase/prm(  1)*sin(prm(123)) - x(  2)*sbase/prm(  1)*cos(prm(123))	

!Ipf =  [ix]*sbase/{SNOM}*cos({PLLPhsAgl0}) + [iy]*sbase/{SNOM}*sin({PLLPhsAgl0})
      x(  9)= x(  1)*sbase/prm(  1)*cos(prm(123)) + x(  2)*sbase/prm(  1)*sin(prm(123))

!x56 =  {vto}
      x( 10)= prm(102)

!Q3 =  [Iqf]*[x56]
      x( 11)= x(  8)*x( 10)

!Q2 =  [Q3]
      x( 12)= x( 11)

!x53 =  {accel}*({vto}-{vtmax})
      x( 13)= prm( 86)*(prm(102)-prm( 85))

!x54 =  satuRATION([x53],0.d0,999999999.d0)
      x( 14)= satuRATION(x( 13),0.d0,999999999.d0)

!x55 =  switchx55yFPLLBattery([x54],{vto},{vtmax})
      x( 15)= switchx55yFPLLBattery(x( 14),prm(102),prm( 85))

!Q1 =  [Q2] + [x55]
      x( 16)= x( 12) + x( 15)

!Iq =  [Q1]/{vto}
      x( 17)= x( 16)/prm(102)

!Iqcmd =  [Iq]
      x( 18)= x( 17)

!x57 =  fcnx57Battery({vto},{lvpnt0},{lvpnt1})
      x( 19)= fcnx57Battery(prm(102),prm( 88),prm( 89))

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
      x( 25)= prm( 93) - 0.5

!x59 =  999999999.
      x( 26)= 999999999.

!LimG =  999999999.
      x( 27)= 999999999.

!LimP =  -999999999.
      x( 28)= -999999999.

!LVPL =  {Lvpl1}
      x( 29)= prm( 92)

!FlagLVPL =  [x56] - {Brkpt}
      x( 30)= x( 10) - prm( 90)

!FlagVolim =  {vtmax} - {vto}
      x( 31)= prm( 85) - prm(102)

!DeltaVPLLFlag =  [x56] - {vPLL}													
      x( 32)= x( 10) - prm( 95)													

!FPLL =  switchx55yFPLLBattery(1.d0,[x56],{vPLL})
      x( 33)= switchx55yFPLLBattery(1.d0,x( 10),prm( 95))

!vxfilt =  {vx0}
      x( 34)= prm(121)

!vyfilt =  {vy0}
      x( 35)= prm(122)

!vq =  -{vx0}*sin({PLLPhsAgl0}) + {vy0}*cos({PLLPhsAgl0})
      x( 36)= -prm(121)*sin(prm(123)) + prm(122)*cos(prm(123))

!wPLL =  {wrefPLL}
      x( 37)= prm( 98)

!x60 =  0.
      x( 38)= 0.

!PLLPhaseAngle =  {PLLPhsAgl0}
      x( 39)= prm(123)

!Pgen =  {Peo}																	
      x( 40)= prm(103)																	

!PgenKW =  {SNOM}*[Pgen]*1000.
      x( 41)= prm(  1)*x( 40)*1000.

!x49 =  0.
      x( 42)= 0.

!x50 =  {SOCini}
      x( 43)= prm( 69)

!SOC =  [x50]
      x( 44)= x( 43)

!FlagBatFull =  {SOCini} - {SOCmax} + 0.00001
      x( 45)= prm( 69) - prm( 70) + 0.00001

!BatFull =  0.
      x( 46)= 0.

!FlagBatEmpty =  {SOCmin} - {SOCini} + 0.00001
      x( 47)= prm( 71) - prm( 69) + 0.00001

!BatEmpty =  0.
      x( 48)= 0.

!vtfilt =  {vto}
      x( 49)= prm(102)

!C =  switch(sqrt({Imax}**2-[Ipcmd]**2),{Imax},{PQFlag})
      x( 50)= switch(sqrt(prm( 77)**2-x( 23)**2),prm( 77),prm( 81))

!IMAX =  {Imax}
      x( 51)= prm( 77)

!A =  switch([C],{Imax},{PQFlag})
      x( 52)= switch(x( 50),prm( 77),prm( 81))

!D =  switch({Imax},sqrt({Imax}**2-[Iqcmd]**2),{PQFlag})
      x( 53)= switch(prm( 77),sqrt(prm( 77)**2-x( 18)**2),prm( 81))

!B =  switch({Imax},[D],{PQFlag})
      x( 54)= switch(prm( 77),x( 53),prm( 81))

!VDL1 =  fcnVDLsBattery({vq1},{vq2},{vq3},{vq4},{Iq1},{Iq2},{Iq3},{Iq4},{vto})
      x( 55)= fcnVDLsBattery(prm( 51),prm( 53),prm( 55),prm( 57),prm( 52),prm( 54),prm( 56),prm( 58),prm(102))

!VDL2 =  fcnVDLsBattery({vp1},{vp2},{vp3},{vp4},{Ip1},{Ip2},{Ip3},{Ip4},{vto})
      x( 56)= fcnVDLsBattery(prm( 59),prm( 61),prm( 63),prm( 65),prm( 60),prm( 62),prm( 64),prm( 66),prm(102))

!Iqmax =  minBattery([VDL1],[A])
      x( 57)= minBattery(x( 55),x( 52))

!Iqmin =  -[Iqmax]
      x( 58)= -x( 57)

!Ipmaxprev =  minBattery([VDL2],[B])
      x( 59)= minBattery(x( 56),x( 54))

!Ipmax =  [Ipmaxprev]
      x( 60)= x( 59)

!Ipmin =  fcnVerificLimIBattery(name,[Iqmax],[Iqmin],[Iqcmd],[Ipmax],[Ipcmd],{vdip},{vup},{vto})
      x( 61)= fcnVerificLimIBattery(name,x( 57),x( 58),x( 18),x( 60),x( 23),prm( 33),prm( 34),prm(102))

!x48 =  [Ipcmd]
      x( 62)= x( 23)

!x47 =  [x48] - {Paux}
      x( 63)= x( 62) - prm( 67)

!x44 =  {vto}
      x( 64)= prm(102)

!Pord =  [x47]*{vto}
      x( 65)= x( 63)*prm(102)

!x45 =  [Pord]
      x( 66)= x( 65)

!Z20 =  0.
      x( 67)= 0.

!Z21 =  0.
      x( 68)= 0.

!Pref =  [x45]
      x( 69)= x( 66)

!Prefini = [Pref]		
      prm(100)= x( 69)

!x46 =  0.
      x( 70)= 0.

!x43 =  [Iqcmd]
      x( 71)= x( 18)

!x26 =  {vref0} - {vto}
      x( 72)= prm( 36) - prm(102)

!verr =  deadBAND([x26],{dbd1},{dbd2})
      x( 73)= deadBAND(x( 72),prm( 37),prm( 38))

!Iqv =  [verr]*{kqv}
      x( 74)= x( 73)*prm( 39)

!Iqinj =  satuRATION([Iqv],{Iql1},{Iqh1})
      x( 75)= satuRATION(x( 74),prm( 41),prm( 40))

!x42 =  [x43] - [Iqinj]
      x( 76)= x( 71) - x( 75)

!x38 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x38')
      x( 77)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x38')

!x52 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x52')
      x( 78)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x52')

!x37 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x37')
      x( 79)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x37')

!x36 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x36')
      x( 80)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x36')

!x35 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x35')
      x( 81)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x35')

!x34 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x34')
      x( 82)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x34')

!x33 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x33')
      x( 83)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x33')

!x51 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x51')
      x( 84)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x51')

!x32 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x32')
      x( 85)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x32')

!x31 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x31')
      x( 86)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x31')

!x30 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x30')
      x( 87)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x30')

!x29 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x29')
      x( 88)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x29')

!x39 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x39')
      x( 89)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x39')

!x40 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x40')
      x( 90)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x40')

!x41 =  Ini_Branch_Q_Battery({QFlag},{vFlag},[x42],{vto},{Qgeno},'x41')
      x( 91)= Ini_Branch_Q_Battery(prm( 80),prm( 79),x( 76),prm(102),prm(104),'x41')

!x28 =  [x29]
      x( 92)= x( 88)

!x27 =  {Peo}
      x( 93)= prm(103)

!Qext =  [x29]
      x( 94)= x( 88)

!Qextini = [Qext]		
      prm( 99)= x( 94)

!voltageDip =  0.
      x( 95)= 0.

!FlagDip =  {vto} - {vdip}
      x( 96)= prm(102) - prm( 33)

!FlagUp =  {vup} - {vto}
      x( 97)= prm( 34) - prm(102)

!Fdip =  0.
      x( 98)= 0.

!Fup =  0.
      x( 99)= 0.

!PFFlagi =  {PFFlag} - 0.5
      x(100)= prm( 78) - 0.5

!vFlagi =  {vFlag} - 0.5
      x(101)= prm( 79) - 0.5

!QFlagi =  {QFlag} - 0.5
      x(102)= prm( 80) - 0.5

!PQFlagi =  {PQFlag} - 0.5
      x(103)= prm( 81) - 0.5

!Y21 =  {vto} + {Qref}*{Kc}														
      x(104)= prm(102) + prm(108)*prm(  5)														

!Y1 =  switch({vcono},[Y21],{vcompFlag})
      x(105)= switch(prm(107),x(104),prm(  4))

!Y2 =  [Y1]
      x(106)= x(105)

!vref = [Y2]			
      prm(101)= x(106)

!Y22 =  0.
      x(107)= 0.

!Y3 =  {Qref}
      x(108)= prm(108)

!Y23 =  0.
      x(109)= 0.

!Y4 =  0.
      x(110)= 0.

!Y5 =  0.
      x(111)= 0.

!Y6 =  0.
      x(112)= 0.

!Y24 =  0.
      x(113)= 0.

!Y7 =  [Qext]
      x(114)= x( 94)

!Y26 =  [Qext]
      x(115)= x( 94)

!Y8 =  [Qext]
      x(116)= x( 94)

!Y25 =  [Qext]
      x(117)= x( 94)

!QextiniE =  [Qext]
      x(118)= x( 94)

!Y9 =  {Plantpref}
      x(119)= prm(109)

!Freq =  1.d0
      x(120)= 1.d0

!Y10 =  0.
      x(121)= 0.

!Y11 =  0.
      x(122)= 0.

!Y12 =  0.
      x(123)= 0.

!Y13 =  0.
      x(124)= 0.

!Y14 =  0.
      x(125)= 0.

!Y15 =  0.
      x(126)= 0.

!Y16 =  0.
      x(127)= 0.

!Y17 =  0.
      x(128)= 0.

!Y18 =  0.
      x(129)= 0.

!Y27 =  [Pref]
      x(130)= x( 69)

!Y19 =  [Pref]
      x(131)= x( 69)

!Y20 =  [Pref]
      x(132)= x( 69)

!PrefiniE =  [Pref]
      x(133)= x( 69)

!vconx =  {vconxo}				
      x(134)= prm(105)				

!vcony =  {vconyo}
      x(135)= prm(106)

!vcon =  {vcono}
      x(136)= prm(107)

!Qbranch =  {Qref}
      x(137)= prm(108)

!Pbranch =  {Plantpref}
      x(138)= prm(109)

!vcompFlagi =  {vcompFlag} - 0.5
      x(139)= prm(  4) - 0.5

!RefFlagi =  {RefFlag} - 0.5
      x(140)= prm(  7) - 0.5

!FreqFlagi =  {FreqFlag} - 0.5
      x(141)= prm( 30) - 0.5

!QextFlagi =  {QextFlag} - 0.5
      x(142)= prm( 32) - 0.5

!DeltaVfrz =  {vto} - {vfrz}
      x(143)= prm(102) - prm( 17)

!FreezeVfrz =  1.
      x(144)= 1.

!Cp =  switch([Ipcmd],[zero],{PQFlag})
      x(145)= switch(x( 23),x(  4),prm( 81))

!Dp =  switch([zero],[Iqcmd],{PQFlag})
      x(146)= switch(x(  4),x( 18),prm( 81))

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
      x(147)=vx
      x(148)=vy
      eqtyp( 11)=147
      eqtyp( 12)=148
      eqtyp( 13)=0.

!& algeq
      eqtyp( 14)=0

!& algeq
      eqtyp( 15)=0

!& swsign
      eqtyp( 16)=0
      if(x(139)>=0.)then
         z(  1)=1
      else
         z(  1)=2
      endif

!& tf1p
      eqtyp( 17)=106
      tc( 17)=prm(  6)

!& algeq
      eqtyp( 18)=0

!& tf1p
      eqtyp( 19)=108
      tc( 19)=prm(  6)

!& algeq
      eqtyp( 20)=0

!& algeq
      eqtyp( 21)=0

!& swsign
      eqtyp( 22)=0
      if(x(140)>=0.)then
         z(  2)=1
      else
         z(  2)=2
      endif

!& db
      eqtyp( 23)=0
      if(x(110)>prm(  8))then
         z(  3)=1
      elseif(x(110)<(-prm(  8)))then
         z(  3)=-1
      else
         z(  3)=0
      endif

!& lim
      eqtyp( 24)=0
      if(x(111)>prm(  9))then
         z(  4)=1
      elseif(x(111)<prm( 10))then
         z(  4)=-1
      else
         z(  4)=0
      endif

!& algeq
      eqtyp( 25)=0

!& swsign
      eqtyp( 26)=0
      if(x(143)>=0.)then
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
      if (x(114)>prm( 13))then
         z(  6)=1
         eqtyp( 28)=0
      elseif (x(114)<prm( 14)) then
         z(  6)=-1
         eqtyp( 28)=0
      else
         z(  6)=0
         if (1.>= 0.005)then
            eqtyp( 28)=114
         else
            eqtyp( 28)=0
         endif
      endif

!& algeq
      eqtyp( 29)=0

!& lim
      eqtyp( 30)=0
      if(x(115)>prm( 13))then
         z(  7)=1
      elseif(x(115)<prm( 14))then
         z(  7)=-1
      else
         z(  7)=0
      endif

!& tf1p1z
      x(149)=x(116)
      eqtyp( 31)=149
      tc( 31)=prm( 16)
      eqtyp( 32)=0

!& algeq
      eqtyp( 33)=0

!& algeq
      eqtyp( 34)=0

!& swsign
      eqtyp( 35)=0
      if(x(142)>=0.)then
         z(  8)=1
      else
         z(  8)=2
      endif

!& tf1p
      eqtyp( 36)=119
      tc( 36)=prm( 18)

!& algeq
      eqtyp( 37)=0

!& db
      eqtyp( 38)=0
      if(x(121)>prm( 20))then
         z(  9)=1
      elseif(x(121)<prm( 19))then
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
      if(x(123)>0.)then
         z( 10)=1
      elseif(x(123)<(-999999999.))then
         z( 10)=-1
      else
         z( 10)=0
      endif

!& lim
      eqtyp( 42)=0
      if(x(124)>999999999.)then
         z( 11)=1
      elseif(x(124)<0.)then
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
      if(x(128)>prm( 23))then
         z( 12)=1
      elseif(x(128)<prm( 24))then
         z( 12)=-1
      else
         z( 12)=0
      endif

!& pictllim
      if(prm( 26)*x(129)> 0.)then
         z( 13)=1
         eqtyp( 46)=0
         x(150)=prm( 27)
      elseif(prm( 26)*x(129)< 0.)then
         z( 13)=-1
         eqtyp( 46)=0
         x(150)=prm( 28)
      else
         z( 13)=0
         eqtyp( 46)=150
         x(150)=x(130)
      endif
      eqtyp( 47)=0

!& lim
      eqtyp( 48)=0
      if(x(130)>prm( 27))then
         z( 14)=1
      elseif(x(130)<prm( 28))then
         z( 14)=-1
      else
         z( 14)=0
      endif

!& tf1p
      eqtyp( 49)=132
      tc( 49)=prm( 29)

!& algeq
      eqtyp( 50)=0

!& algeq
      eqtyp( 51)=0

!& swsign
      eqtyp( 52)=0
      if(x(141)>=0.)then
         z( 15)=1
      else
         z( 15)=2
      endif

!& algeq								!Aqui empiezan modelos de REEC_C
      eqtyp( 53)=0

!& algeq
      eqtyp( 54)=0

!& swsign
      eqtyp( 55)=0
      if(x( 96)>=0.)then
         z( 16)=1
      else
         z( 16)=2
      endif

!& swsign
      eqtyp( 56)=0
      if(x( 97)>=0.)then
         z( 17)=1
      else
         z( 17)=2
      endif

!& algeq
      eqtyp( 57)=0

!& algeq
      eqtyp( 58)=0

!& algeq
      eqtyp( 59)=0

!& algeq
      eqtyp( 60)=0

!& algeq
      eqtyp( 61)=0

!& algeq
      eqtyp( 62)=0

!& algeq
      eqtyp( 63)=0

!& int
      if (3600.< 0.005)then
         eqtyp( 64)=0
      else
         eqtyp( 64)= 42
         tc( 64)=3600.
      endif

!& algeq
      eqtyp( 65)=0

!& lim
      eqtyp( 66)=0
      if(x( 43)>prm( 70))then
         z( 18)=1
      elseif(x( 43)<prm( 71))then
         z( 18)=-1
      else
         z( 18)=0
      endif

!& algeq
      eqtyp( 67)=0

!& swsign
      eqtyp( 68)=0
      if(x( 45)>=0.)then
         z( 19)=1
      else
         z( 19)=2
      endif

!& algeq
      eqtyp( 69)=0

!& swsign
      eqtyp( 70)=0
      if(x( 47)>=0.)then
         z( 20)=1
      else
         z( 20)=2
      endif

!& algeq
      eqtyp( 71)=0

!& swsign
      eqtyp( 72)=0
      if(x(103)>=0.)then
         z( 21)=1
      else
         z( 21)=2
      endif

!& swsign
      eqtyp( 73)=0
      if(x(103)>=0.)then
         z( 22)=1
      else
         z( 22)=2
      endif

!& algeq
      eqtyp( 74)=0

!& swsign
      eqtyp( 75)=0
      if(x(103)>=0.)then
         z( 23)=1
      else
         z( 23)=2
      endif

!& min2v
      eqtyp( 76)=0
      if(x( 55)<x( 52))then
         z( 24)=1
      else
         z( 24)=2
      endif

!& algeq
      eqtyp( 77)=0

!& algeq
      eqtyp( 78)=0

!& swsign
      eqtyp( 79)=0
      if(x(103)>=0.)then
         z( 25)=1
      else
         z( 25)=2
      endif

!& min2v
      eqtyp( 80)=0
      if(x( 56)<x( 54))then
         z( 26)=1
      else
         z( 26)=2
      endif

!& algeq
      eqtyp( 81)=0

!& algeq
      eqtyp( 82)=0

!& tf1p
      eqtyp( 83)= 49
      tc( 83)=prm( 35)

!& algeq
      eqtyp( 84)=0

!& db
      eqtyp( 85)=0
      if(x( 72)>prm( 38))then
         z( 27)=1
      elseif(x( 72)<prm( 37))then
         z( 27)=-1
      else
         z( 27)=0
      endif

!& algeq
      eqtyp( 86)=0

!& lim
      eqtyp( 87)=0
      if(x( 74)>prm( 40))then
         z( 28)=1
      elseif(x( 74)<prm( 41))then
         z( 28)=-1
      else
         z( 28)=0
      endif

!& tf1p
      eqtyp( 88)= 93
      tc( 88)=prm( 18)

!& algeq
      eqtyp( 89)=0

!& swsign
      eqtyp( 90)=0
      if(x(100)>=0.)then
         z( 29)=1
      else
         z( 29)=2
      endif

!& lim						
      eqtyp( 91)=0
      if(x( 88)>prm( 42))then
         z( 30)=1
      elseif(x( 88)<prm( 43))then
         z( 30)=-1
      else
         z( 30)=0
      endif

!& algeq
      eqtyp( 92)=0

!& algeq
      eqtyp( 93)=0

!& inlim
      if (1.>= 0.005)then
         tc( 94)=1.
      endif
      if (x( 84)>prm( 44))then
         z( 31)=1
         eqtyp( 94)=0
      elseif (x( 84)<prm( 45)) then
         z( 31)=-1
         eqtyp( 94)=0
      else
         z( 31)=0
         if (1.>= 0.005)then
            eqtyp( 94)= 84
         else
            eqtyp( 94)=0
         endif
      endif

!& algeq
      eqtyp( 95)=0

!& swsign
      eqtyp( 96)=0
      if(x(101)>=0.)then
         z( 32)=1
      else
         z( 32)=2
      endif

!& lim
      eqtyp( 97)=0
      if(x( 82)>prm( 44))then
         z( 33)=1
      elseif(x( 82)<prm( 45))then
         z( 33)=-1
      else
         z( 33)=0
      endif

!& algeq
      eqtyp( 98)=0

!& algeq
      eqtyp( 99)=0

!& invlim
      if (1.>= 0.005)then
         tc(100)=1.
      endif
      if(x( 78)>x( 57))then
         z( 34)=1
         eqtyp(100)=0
      elseif(x( 78)<x( 58)) then
         z( 34)=-1
         eqtyp(100)=0
      else
         z( 34)=0
         if (1.>= 0.005)then
            eqtyp(100)= 78
         else
            eqtyp(100)=0
         endif
      endif

!& algeq
      eqtyp(101)=0

!& lim
      eqtyp(102)=0
      if(x( 49)>999999999.)then
         z( 35)=1
      elseif(x( 49)<0.01)then
         z( 35)=-1
      else
         z( 35)=0
      endif

!& algeq
      eqtyp(103)=0

!& algeq
      eqtyp(104)=0

!& int
      if (prm( 50)< 0.005)then
         eqtyp(105)=0
      else
         eqtyp(105)= 91
         tc(105)=prm( 50)
      endif

!& swsign
      eqtyp(106)=0
      if(x(102)>=0.)then
         z( 36)=1
      else
         z( 36)=2
      endif

!& algeq
      eqtyp(107)=0

!& limvb
      eqtyp(108)=0
      if(x( 71)>x( 57))then
         z( 37)=1
      elseif(x( 71)<x( 58))then
         z( 37)=-1
      else
         z( 37)=0
      endif

!& pwlin6
      eqtyp(109)=0
      if(x( 49)<prm(112))then
         z( 38)=1
      elseif(x( 49)>=prm(113))then
         z( 38)=   5
      elseif(prm(112)<=x( 49) .and. x( 49)<prm( 51))then
         z( 38)=  1
      elseif(prm( 51)<=x( 49) .and. x( 49)<prm( 53))then
         z( 38)=  2
      elseif(prm( 53)<=x( 49) .and. x( 49)<prm( 55))then
         z( 38)=  3
      elseif(prm( 55)<=x( 49) .and. x( 49)<prm( 57))then
         z( 38)=  4
      elseif(prm( 57)<=x( 49) .and. x( 49)<prm(113))then
         z( 38)=  5
      endif

!& pwlin6
      eqtyp(110)=0
      if(x( 49)<prm(114))then
         z( 39)=1
      elseif(x( 49)>=prm(115))then
         z( 39)=   5
      elseif(prm(114)<=x( 49) .and. x( 49)<prm( 59))then
         z( 39)=  1
      elseif(prm( 59)<=x( 49) .and. x( 49)<prm( 61))then
         z( 39)=  2
      elseif(prm( 61)<=x( 49) .and. x( 49)<prm( 63))then
         z( 39)=  3
      elseif(prm( 63)<=x( 49) .and. x( 49)<prm( 65))then
         z( 39)=  4
      elseif(prm( 65)<=x( 49) .and. x( 49)<prm(115))then
         z( 39)=  5
      endif

!& algeq
      eqtyp(111)=0

!& lim
      eqtyp(112)=0
      if(x( 67)>prm( 72))then
         z( 40)=1
      elseif(x( 67)<prm( 73))then
         z( 40)=-1
      else
         z( 40)=0
      endif

!& int
      if (1.< 0.005)then
         eqtyp(113)=0
      else
         eqtyp(113)= 66
         tc(113)=1.
      endif

!& algeq
      eqtyp(114)=0

!& inlim
      if (prm( 76)>= 0.005)then
         tc(115)=prm( 76)
      endif
      if (x( 65)>prm( 74))then
         z( 41)=1
         eqtyp(115)=0
      elseif (x( 65)<prm( 75)) then
         z( 41)=-1
         eqtyp(115)=0
      else
         z( 41)=0
         if (prm( 76)>= 0.005)then
            eqtyp(115)= 65
         else
            eqtyp(115)=0
         endif
      endif

!& algeq
      eqtyp(116)=0

!& algeq
      eqtyp(117)=0

!& limvb
      eqtyp(118)=0
      if(x( 62)>x( 60))then
         z( 42)=1
      elseif(x( 62)<x( 61))then
         z( 42)=-1
      else
         z( 42)=0
      endif

!& algeq								!Aqui empiezan modelos de REGC_A
      eqtyp(119)=0

!& algeq
      eqtyp(120)=0

!& algeq
      eqtyp(121)=0

!& tf1p2lim
      if(prm( 84)< 0.001)then
         prm( 84)=0.d0
         prm(125)=-huge(0.d0)
         prm(124)= huge(0.d0)
         prm(119)=-huge(0.d0)
         prm(120)= huge(0.d0)
      endif
      if(1.*x( 18)-x( 17)>prm(120)*prm( 84))then
         z( 43)=1
      elseif(1.*x( 18)-x( 17)<prm(119)*prm( 84))then
         z( 43)=-1
      else
         z( 43)=0
      endif
      eqtyp(122)=0
      if(x( 17)>prm(124))then
         z( 44)=1
         eqtyp(123)=0
      elseif(x( 17)<prm(125))then
         z( 44)=-1
         eqtyp(123)=0
      else
         z( 44)=0
         eqtyp(123)= 17
      endif
      tc(123)=prm( 84)

!& algeq
      eqtyp(124)=0

!& algeq
      eqtyp(125)=0

!& lim
      eqtyp(126)=0
      if(x( 13)>999999999.)then
         z( 45)=1
      elseif(x( 13)<0.)then
         z( 45)=-1
      else
         z( 45)=0
      endif

!& algeq
      eqtyp(127)=0

!& swsign
      eqtyp(128)=0
      if(x( 31)>=0.)then
         z( 46)=1
      else
         z( 46)=2
      endif

!& algeq
      eqtyp(129)=0

!& lim
      eqtyp(130)=0
      if(x( 12)>999999999.)then
         z( 47)=1
      elseif(x( 12)<prm( 87))then
         z( 47)=-1
      else
         z( 47)=0
      endif

!& tf1p
      eqtyp(131)= 10
      tc(131)=prm(  6)

!& algeq								!Salida Iqf del modelo REGC_A
      eqtyp(132)=0

!& pwlin4
      eqtyp(133)=0
      if(x( 10)<(-10.))then
         z( 48)=1
      elseif(x( 10)>=prm(116))then
         z( 48)=   3
      elseif((-10.)<=x( 10) .and. x( 10)<prm( 91))then
         z( 48)=  1
      elseif(prm( 91)<=x( 10) .and. x( 10)<prm( 90))then
         z( 48)=  2
      elseif(prm( 90)<=x( 10) .and. x( 10)<prm(116))then
         z( 48)=  3
      endif

!& algeq
      eqtyp(134)=0

!& swsign
      eqtyp(135)=0
      if(x( 30)>=0.)then
         z( 49)=1
      else
         z( 49)=2
      endif

!& swsign
      eqtyp(136)=0
      if(x( 25)>=0.)then
         z( 50)=1
      else
         z( 50)=2
      endif

!& algeq
      eqtyp(137)=0

!& lim
      eqtyp(138)=0
      if(x( 21)>prm( 84)*prm( 94))then
         z( 51)=1
      elseif(x( 21)<(-999999999.))then
         z( 51)=-1
      else
         z( 51)=0
      endif

!& invlim
      if (prm( 84)>= 0.005)then
         tc(139)=prm( 84)
      endif
      if(x( 20)>x( 26))then
         z( 52)=1
         eqtyp(139)=0
      elseif(x( 20)<x( 28)) then
         z( 52)=-1
         eqtyp(139)=0
      else
         z( 52)=0
         if (prm( 84)>= 0.005)then
            eqtyp(139)= 20
         else
            eqtyp(139)=0
         endif
      endif

!& pwlin4
      eqtyp(140)=0
      if(x(  5)<prm(117))then
         z( 53)=1
      elseif(x(  5)>=prm(118))then
         z( 53)=   3
      elseif(prm(117)<=x(  5) .and. x(  5)<prm( 88))then
         z( 53)=  1
      elseif(prm( 88)<=x(  5) .and. x(  5)<prm( 89))then
         z( 53)=  2
      elseif(prm( 89)<=x(  5) .and. x(  5)<prm(118))then
         z( 53)=  3
      endif

!& algeq								!Salida Ipf del modelo REGC_A
      eqtyp(141)=0

!& algeq								!Aquí empiezan modelos del PLL
      eqtyp(142)=0

!& swsign
      eqtyp(143)=0
      if(x( 32)>=0.)then
         z( 54)=1
      else
         z( 54)=2
      endif

!& tf1p
      eqtyp(144)= 34
      tc(144)=prm(  6)

!& tf1p
      eqtyp(145)= 35
      tc(145)=prm(  6)

!& algeq
      eqtyp(146)=0

!& pictl
      eqtyp(147)=152
      x(152)=x( 37)
      eqtyp(148)=0

!& algeq
      eqtyp(149)=0

!& int
      if (1.< 0.005)then
         eqtyp(150)=0
      else
         eqtyp(150)= 39
         tc(150)=1.
      endif

!& algeq
      eqtyp(151)=0

!& algeq
      eqtyp(152)=0

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
      f(  6)=x(134) + prm(  2)*x(  1)*sbase/prm(  1) - prm(  3)*x(  2)*sbase/prm(  1) - vx

!& algeq
      f(  7)=x(135) + prm(  2)*x(  2)*sbase/prm(  1) + prm(  3)*x(  1)*sbase/prm(  1) - vy

!& algeq
      f(  8)=x(136) - sqrt(x(134)**2+x(135)**2)

!& algeq
      f(  9)=x(137) - x(135)*x(  1)*sbase/prm(  1) + x(134)*x(  2)*sbase/prm(  1)

!& algeq
      f( 10)=x(138) - x(134)*x(  1)*sbase/prm(  1) - x(135)*x(  2)*sbase/prm(  1)

!& f_inj
      f( 11)=(-x(147)+vx)/max(0.05,prm( 31))
      f( 12)=(-x(148)+vy)/max(0.05,prm( 31))
      f( 13)=((vy-x(148))*x(147) - (vx-x(147))*x(148))/(2.*pi*fnom*max(0.05,prm( 31))*(x(147)**2+x(148)**2))-x(120)
      if(omega_ref=='COI')then
         f( 13)=f( 13)+omegacoi(isl(bus),0)
      else
         f( 13)=f( 13)+1.d0
      endif

!& algeq
      f( 14)=x(104) - x(  5) - prm(  5)*x(137)

!& algeq
      f( 15)=x(139) - prm(  4) + 0.5

!& swsign
      select case (z(  1))
         case(1)
            f( 16)=x(105)-x(136)
         case(2)
            f( 16)=x(105)-x(104)
      end select

!& tf1p
      f( 17)=(-x(106)+1.*x(105))

!& algeq
      f( 18)=x(107) - prm(101) + x(106)

!& tf1p
      f( 19)=(-x(108)+1.*x(137))

!& algeq
      f( 20)=x(109) - prm(108) + x(108)

!& algeq
      f( 21)=x(140) - prm(  7) + 0.5

!& swsign
      select case (z(  2))
         case(1)
            f( 22)=x(110)-x(107)
         case(2)
            f( 22)=x(110)-x(109)
      end select

!& db
      select case (z(  3))
         case(0)
            f( 23)=x(111)
         case(-1)
            f( 23)=x(111)-0.-1.*(x(110)-(-prm(  8)))
         case(1)
            f( 23)=x(111)-0.-1.*(x(110)-prm(  8))
      end select

!& lim
      select case (z(  4))
         case(0)
            f( 24)=x(112)-x(111)
         case(-1)
            f( 24)=x(112)-prm( 10)
         case(1)
            f( 24)=x(112)-prm(  9)
      end select

!& algeq
      f( 25)=x(143) - x(  5) + prm( 17)

!& swsign
      select case (z(  5))
         case(1)
            f( 26)=x(144)-x(  3)
         case(2)
            f( 26)=x(144)-x(  4)
      end select

!& algeq
      f( 27)=x(113) - x(112)*x(144)*prm( 12)

!& inlim
      if (1.>= 0.005)then
         select case (z(  6))
            case(0)
               f( 28)=x(113)
            case(1)
               f( 28)=x(114)-prm( 13)
            case(-1)
               f( 28)=x(114)-prm( 14)
         end select
      else
         select case (z(  6))
            case(0)
               f( 28)=x(113)-x(114)
            case(1)
               f( 28)=x(114)-prm( 13)
            case(-1)
               f( 28)=x(114)-prm( 14)
         end select
      endif

!& algeq
      f( 29)=x(115) - x(112)*prm( 11) - x(114)

!& lim
      select case (z(  7))
         case(0)
            f( 30)=x(116)-x(115)
         case(-1)
            f( 30)=x(116)-prm( 14)
         case(1)
            f( 30)=x(116)-prm( 13)
      end select

!& tf1p1z
      f( 31)=-x(149)+x(116)
      if (prm( 16)< 0.005)then
         f( 32)=1.*x(116)-x(117)
      else
         f( 32)=1.*(prm( 15)*x(116)+(prm( 16)-prm( 15))*x(149))-prm( 16)*x(117)
      endif

!& algeq
      f( 33)=x(142) - prm( 32) + 0.5

!& algeq
      f( 34)=x(118) - prm( 99)

!& swsign
      select case (z(  8))
         case(1)
            f( 35)=x( 94)-x(117)
         case(2)
            f( 35)=x( 94)-x(118)
      end select

!& tf1p
      f( 36)=(-x(119)+1.*x(138))

!& algeq
      f( 37)=x(121) + x(120) - prm(110)

!& db
      select case (z(  9))
         case(0)
            f( 38)=x(122)
         case(-1)
            f( 38)=x(122)-0.-1.*(x(121)-prm( 19))
         case(1)
            f( 38)=x(122)-0.-1.*(x(121)-prm( 20))
      end select

!& algeq
      f( 39)=x(123) - x(122)*prm( 21)

!& algeq
      f( 40)=x(124) - x(122)*prm( 22)

!& lim
      select case (z( 10))
         case(0)
            f( 41)=x(125)-x(123)
         case(-1)
            f( 41)=x(125)-(-999999999.)
         case(1)
            f( 41)=x(125)-0.
      end select

!& lim
      select case (z( 11))
         case(0)
            f( 42)=x(126)-x(124)
         case(-1)
            f( 42)=x(126)-0.
         case(1)
            f( 42)=x(126)-999999999.
      end select

!& algeq
      f( 43)=x(127) - x(125) - x(126)

!& algeq
      f( 44)=x(128) - prm(109) + x(119) - x(127)

!& lim
      select case (z( 12))
         case(0)
            f( 45)=x(129)-x(128)
         case(-1)
            f( 45)=x(129)-prm( 24)
         case(1)
            f( 45)=x(129)-prm( 23)
      end select

!& pictllim
      select case (z( 13))
        case(0)
           f( 46)=prm( 26)*x(129)
        case(-1)
         f( 46)=x(150)-prm( 28)
        case(1)
         f( 46)=x(150)-prm( 27)
      end select
      f( 47)=prm( 25)*x(129)+x(150)-x(130)

!& lim
      select case (z( 14))
         case(0)
            f( 48)=x(131)-x(130)
         case(-1)
            f( 48)=x(131)-prm( 28)
         case(1)
            f( 48)=x(131)-prm( 27)
      end select

!& tf1p
      f( 49)=(-x(132)+1.*x(131))

!& algeq
      f( 50)=x(141) - prm( 30) + 0.5

!& algeq
      f( 51)=x(133) - prm(100)

!& swsign
      select case (z( 15))
         case(1)
            f( 52)=x( 69)-x(132)
         case(2)
            f( 52)=x( 69)-x(133)
      end select

!& algeq								!Aqui empiezan modelos de REEC_C
      f( 53)=x( 96) - x(  5) + prm( 33)

!& algeq
      f( 54)=x( 97) - prm( 34) + x(  5)

!& swsign
      select case (z( 16))
         case(1)
            f( 55)=x( 98)-x(  4)
         case(2)
            f( 55)=x( 98)-x(  3)
      end select

!& swsign
      select case (z( 17))
         case(1)
            f( 56)=x( 99)-x(  4)
         case(2)
            f( 56)=x( 99)-x(  3)
      end select

!& algeq
      f( 57)=x( 95) - x( 98) - x( 99)

!& algeq
      f( 58)=x(100) - prm( 78) + 0.5

!& algeq
      f( 59)=x(101) - prm( 79) + 0.5

!& algeq
      f( 60)=x(102) - prm( 80) + 0.5

!& algeq
      f( 61)=x(103) - prm( 81) + 0.5

!& algeq
      f( 62)=x( 40) - x(  6)

!& algeq
      f( 63)=x( 41) - x( 40)*prm(  1)*1000.

!& int
      if (3600.< 0.005)then
         f( 64)=x( 41)-x( 42)
      else
         f( 64)=x( 41)
      endif

!& algeq
      f( 65)=x( 43) - prm( 69) + x( 42)/(prm( 68)*1000.)

!& lim
      select case (z( 18))
         case(0)
            f( 66)=x( 44)-x( 43)
         case(-1)
            f( 66)=x( 44)-prm( 71)
         case(1)
            f( 66)=x( 44)-prm( 70)
      end select

!& algeq
      f( 67)=x( 45) - x( 44) + prm( 70) - 0.00001

!& swsign
      select case (z( 19))
         case(1)
            f( 68)=x( 46)-x(  3)
         case(2)
            f( 68)=x( 46)-x(  4)
      end select

!& algeq
      f( 69)=x( 47) - prm( 71) + x( 44) - 0.00001

!& swsign
      select case (z( 20))
         case(1)
            f( 70)=x( 48)-x(  3)
         case(2)
            f( 70)=x( 48)-x(  4)
      end select

!& algeq
      f( 71)=x( 51) - prm( 77)

!& swsign
      select case (z( 21))
         case(1)
            f( 72)=x(145)-x( 23)
         case(2)
            f( 72)=x(145)-x(  4)
      end select

!& swsign
      select case (z( 22))
         case(1)
            f( 73)=x(146)-x(  4)
         case(2)
            f( 73)=x(146)-x( 18)
      end select

!& algeq
      f( 74)=x( 50) - sqrt(prm( 77)**2-x(145)**2)

!& swsign
      select case (z( 23))
         case(1)
            f( 75)=x( 52)-x( 50)
         case(2)
            f( 75)=x( 52)-x( 51)
      end select

!& min2v
      select case (z( 24))
         case(1)
            f( 76)=x( 55)-x( 57)
         case(2)
            f( 76)=x( 52)-x( 57)
      end select

!& algeq
      f( 77)=x( 58) + x( 57)

!& algeq
      f( 78)=x( 53) - sqrt(prm( 77)**2-x(146)**2)

!& swsign
      select case (z( 25))
         case(1)
            f( 79)=x( 54)-x( 51)
         case(2)
            f( 79)=x( 54)-x( 53)
      end select

!& min2v
      select case (z( 26))
         case(1)
            f( 80)=x( 56)-x( 59)
         case(2)
            f( 80)=x( 54)-x( 59)
      end select

!& algeq
      f( 81)=x( 60) - x( 59)*(1.-x( 48))

!& algeq
      f( 82)=x( 61) + x( 59)*(1.-x( 46))

!& tf1p
      f( 83)=(-x( 49)+1.*x(  5))

!& algeq
      f( 84)=x( 72) + x( 49) - prm( 36)

!& db
      select case (z( 27))
         case(0)
            f( 85)=x( 73)
         case(-1)
            f( 85)=x( 73)-0.-1.*(x( 72)-prm( 37))
         case(1)
            f( 85)=x( 73)-0.-1.*(x( 72)-prm( 38))
      end select

!& algeq
      f( 86)=x( 74) - x( 73)*prm( 39)

!& lim
      select case (z( 28))
         case(0)
            f( 87)=x( 75)-x( 74)
         case(-1)
            f( 87)=x( 75)-prm( 41)
         case(1)
            f( 87)=x( 75)-prm( 40)
      end select

!& tf1p
      f( 88)=(-x( 93)+1.*x(  6))

!& algeq
      f( 89)=x( 92) - x( 93)*tan(prm(111))

!& swsign
      select case (z( 29))
         case(1)
            f( 90)=x( 88)-x( 92)
         case(2)
            f( 90)=x( 88)-x( 94)
      end select

!& lim						
      select case (z( 30))
         case(0)
            f( 91)=x( 87)-x( 88)
         case(-1)
            f( 91)=x( 87)-prm( 43)
         case(1)
            f( 91)=x( 87)-prm( 42)
      end select

!& algeq
      f( 92)=x( 86) - x( 87) + x(  7)

!& algeq
      f( 93)=x( 85) - x( 86)*(1.-x( 95))*prm( 47)

!& inlim
      if (1.>= 0.005)then
         select case (z( 31))
            case(0)
               f( 94)=x( 85)
            case(1)
               f( 94)=x( 84)-prm( 44)
            case(-1)
               f( 94)=x( 84)-prm( 45)
         end select
      else
         select case (z( 31))
            case(0)
               f( 94)=x( 85)-x( 84)
            case(1)
               f( 94)=x( 84)-prm( 44)
            case(-1)
               f( 94)=x( 84)-prm( 45)
         end select
      endif

!& algeq
      f( 95)=x( 83) - x( 84) - prm( 46)*x( 86)

!& swsign
      select case (z( 32))
         case(1)
            f( 96)=x( 82)-x( 83)
         case(2)
            f( 96)=x( 82)-x( 88)
      end select

!& lim
      select case (z( 33))
         case(0)
            f( 97)=x( 81)-x( 82)
         case(-1)
            f( 97)=x( 81)-prm( 45)
         case(1)
            f( 97)=x( 81)-prm( 44)
      end select

!& algeq
      f( 98)=x( 80) - x( 81) + x( 49)

!& algeq
      f( 99)=x( 79) - x( 80)*(1.-x( 95))*prm( 49)

!& invlim
      if (1.>= 0.005)then
         select case (z( 34))
            case(0)
               f(100)=x( 79)
            case(1)
               f(100)=x( 78)-x( 57)
            case(-1)
               f(100)=x( 78)-x( 58)
         end select
      else
         select case (z( 34))
            case(0)
               f(100)=x( 79)-x( 78)
            case(1)
               f(100)=x( 78)-x( 57)
            case(-1)
               f(100)=x( 78)-x( 58)
         end select
      endif

!& algeq
      f(101)=x( 77) - x( 78) - prm( 48)*x( 80)

!& lim
      select case (z( 35))
         case(0)
            f(102)=x( 64)-x( 49)
         case(-1)
            f(102)=x( 64)-0.01
         case(1)
            f(102)=x( 64)-999999999.
      end select

!& algeq
      f(103)=x( 89) - x( 88)/x( 64)

!& algeq
      f(104)=x( 90) - (1.-x( 95))*(x( 89) - x( 91))

!& int
      if (prm( 50)< 0.005)then
         f(105)=x( 90)-x( 91)
      else
         f(105)=x( 90)
      endif

!& swsign
      select case (z( 36))
         case(1)
            f(106)=x( 76)-x( 77)
         case(2)
            f(106)=x( 76)-x( 91)
      end select

!& algeq
      f(107)=x( 71) - x( 75) - x( 76)

!& limvb
      select case (z( 37))
         case(0)
            f(108)=x( 18)-x( 71)
         case(-1)
            f(108)=x( 18)-x( 58)
         case(1)
            f(108)=x( 18)-x( 57)
      end select

!& pwlin6
      select case (z( 38))
         case (  1)
            f(109)=prm( 52)+ ( (prm( 52)-prm( 52))*(x( 49)-prm(112))/(prm( 51)-prm(112)) ) -x( 55)
         case (  2)
            f(109)=prm( 52)+ ( (prm( 54)-prm( 52))*(x( 49)-prm( 51))/(prm( 53)-prm( 51)) ) -x( 55)
         case (  3)
            f(109)=prm( 54)+ ( (prm( 56)-prm( 54))*(x( 49)-prm( 53))/(prm( 55)-prm( 53)) ) -x( 55)
         case (  4)
            f(109)=prm( 56)+ ( (prm( 58)-prm( 56))*(x( 49)-prm( 55))/(prm( 57)-prm( 55)) ) -x( 55)
         case (  5)
            f(109)=prm( 58)+ ( (prm( 58)-prm( 58))*(x( 49)-prm( 57))/(prm(113)-prm( 57)) ) -x( 55)
      end select

!& pwlin6
      select case (z( 39))
         case (  1)
            f(110)=prm( 60)+ ( (prm( 60)-prm( 60))*(x( 49)-prm(114))/(prm( 59)-prm(114)) ) -x( 56)
         case (  2)
            f(110)=prm( 60)+ ( (prm( 62)-prm( 60))*(x( 49)-prm( 59))/(prm( 61)-prm( 59)) ) -x( 56)
         case (  3)
            f(110)=prm( 62)+ ( (prm( 64)-prm( 62))*(x( 49)-prm( 61))/(prm( 63)-prm( 61)) ) -x( 56)
         case (  4)
            f(110)=prm( 64)+ ( (prm( 66)-prm( 64))*(x( 49)-prm( 63))/(prm( 65)-prm( 63)) ) -x( 56)
         case (  5)
            f(110)=prm( 66)+ ( (prm( 66)-prm( 66))*(x( 49)-prm( 65))/(prm(115)-prm( 65)) ) -x( 56)
      end select

!& algeq
      f(111)=x( 67) - (x( 69)-x( 66))/(0.000001)

!& lim
      select case (z( 40))
         case(0)
            f(112)=x( 68)-x( 67)
         case(-1)
            f(112)=x( 68)-prm( 73)
         case(1)
            f(112)=x( 68)-prm( 72)
      end select

!& int
      if (1.< 0.005)then
         f(113)=x( 68)-x( 66)
      else
         f(113)=x( 68)
      endif

!& algeq
      f(114)=x( 70) - (1.-x( 95))*(x( 66) - x( 65))

!& inlim
      if (prm( 76)>= 0.005)then
         select case (z( 41))
            case(0)
               f(115)=x( 70)
            case(1)
               f(115)=x( 65)-prm( 74)
            case(-1)
               f(115)=x( 65)-prm( 75)
         end select
      else
         select case (z( 41))
            case(0)
               f(115)=x( 70)-x( 65)
            case(1)
               f(115)=x( 65)-prm( 74)
            case(-1)
               f(115)=x( 65)-prm( 75)
         end select
      endif

!& algeq
      f(116)=x( 63) - x( 65)/x( 64)

!& algeq
      f(117)=x( 62) - x( 63) - prm( 67)

!& limvb
      select case (z( 42))
         case(0)
            f(118)=x( 23)-x( 62)
         case(-1)
            f(118)=x( 23)-x( 61)
         case(1)
            f(118)=x( 23)-x( 60)
      end select

!& algeq								!Aqui empiezan modelos de REGC_A
      f(119)=x( 25) - prm( 93) + 0.5

!& algeq
      f(120)=x( 28) + 999999999.

!& algeq
      f(121)=x( 27) - 999999999.

!& tf1p2lim
      select case (z( 43))
         case(0)
            f(122)=x(151)-1.*x( 18)+x( 17)
         case(1)
            f(122)=x(151)-prm(120)*prm( 84)
         case(-1)
            f(122)=x(151)-prm(119)*prm( 84)
      end select
      select case (z( 44))
         case(0)
            f(123)=x(151)
         case(1)
            f(123)=x( 17)-prm(124)
         case(-1)
            f(123)=x( 17)-prm(125)
      end select

!& algeq
      f(124)=x( 16) - x( 17)*x(  5)

!& algeq
      f(125)=x( 13) - prm( 86)*(x(  5)-prm( 85))

!& lim
      select case (z( 45))
         case(0)
            f(126)=x( 14)-x( 13)
         case(-1)
            f(126)=x( 14)-0.
         case(1)
            f(126)=x( 14)-999999999.
      end select

!& algeq
      f(127)=x( 31) - prm( 85) + x(  5)

!& swsign
      select case (z( 46))
         case(1)
            f(128)=x( 15)-x(  4)
         case(2)
            f(128)=x( 15)-x( 14)
      end select

!& algeq
      f(129)=x( 12) - x( 16) + x( 15)

!& lim
      select case (z( 47))
         case(0)
            f(130)=x( 11)-x( 12)
         case(-1)
            f(130)=x( 11)-prm( 87)
         case(1)
            f(130)=x( 11)-999999999.
      end select

!& tf1p
      f(131)=(-x( 10)+1.*x(  5))

!& algeq								!Salida Iqf del modelo REGC_A
      f(132)=x(  8) - x( 11)/x( 10)

!& pwlin4
      select case (z( 48))
         case (  1)
            f(133)=0.+ ( (0.-0.)*(x( 10)-(-10.))/(prm( 91)-(-10.)) ) -x( 29)
         case (  2)
            f(133)=0.+ ( (prm( 92)-0.)*(x( 10)-prm( 91))/(prm( 90)-prm( 91)) ) -x( 29)
         case (  3)
            f(133)=prm( 92)+ ( (prm( 92)-prm( 92))*(x( 10)-prm( 90))/(prm(116)-prm( 90)) ) -x( 29)
      end select

!& algeq
      f(134)=x( 30) - x( 10) + prm( 90)

!& swsign
      select case (z( 49))
         case(1)
            f(135)=x( 24)-x( 27)
         case(2)
            f(135)=x( 24)-x( 29)
      end select

!& swsign
      select case (z( 50))
         case(1)
            f(136)=x( 26)-x( 24)
         case(2)
            f(136)=x( 26)-x( 27)
      end select

!& algeq
      f(137)=x( 21) - x( 23) + x( 20)

!& lim
      select case (z( 51))
         case(0)
            f(138)=x( 22)-x( 21)
         case(-1)
            f(138)=x( 22)-(-999999999.)
         case(1)
            f(138)=x( 22)-prm( 84)*prm( 94)
      end select

!& invlim
      if (prm( 84)>= 0.005)then
         select case (z( 52))
            case(0)
               f(139)=x( 22)
            case(1)
               f(139)=x( 20)-x( 26)
            case(-1)
               f(139)=x( 20)-x( 28)
         end select
      else
         select case (z( 52))
            case(0)
               f(139)=x( 22)-x( 20)
            case(1)
               f(139)=x( 20)-x( 26)
            case(-1)
               f(139)=x( 20)-x( 28)
         end select
      endif

!& pwlin4
      select case (z( 53))
         case (  1)
            f(140)=0.+ ( (0.-0.)*(x(  5)-prm(117))/(prm( 88)-prm(117)) ) -x( 19)
         case (  2)
            f(140)=0.+ ( (1.-0.)*(x(  5)-prm( 88))/(prm( 89)-prm( 88)) ) -x( 19)
         case (  3)
            f(140)=1.+ ( (1.-1.)*(x(  5)-prm( 89))/(prm(118)-prm( 89)) ) -x( 19)
      end select

!& algeq								!Salida Ipf del modelo REGC_A
      f(141)=x(  9) - x( 19)*x( 20)

!& algeq								!Aquí empiezan modelos del PLL
      f(142)=x( 32) - x( 10) + prm( 95)

!& swsign
      select case (z( 54))
         case(1)
            f(143)=x( 33)-x(  3)
         case(2)
            f(143)=x( 33)-x(  4)
      end select

!& tf1p
      f(144)=(-x( 34)+1.*vx    )

!& tf1p
      f(145)=(-x( 35)+1.*vy    )

!& algeq
      f(146)=x( 36) + x( 34)*sin(x( 39)) - x( 35)*cos(x( 39))

!& pictl
      f(147)=prm( 97)                                                                                                                                                                                                                                                                                                    *x( 36)
      f(148)=prm( 96)                                                                                                                                                                                                                                                                                                    *x( 36)+x(152)-x( 37)

!& algeq
      f(149)=x( 38) - x( 33)*(x( 37)-prm( 98))

!& int
      if (1.< 0.005)then
         f(150)=x( 38)-x( 39)
      else
         f(150)=x( 38)
      endif

!& algeq
      f(151)=x(  1) - x(  9)*cos(x( 39))*prm(  1)/sbase - x(  8)*sin(x( 39))*prm(  1)/sbase

!& algeq
      f(152)=x(  2) - x(  9)*sin(x( 39))*prm(  1)/sbase + x(  8)*cos(x( 39))*prm(  1)/sbase

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
            if(x(139)<0.)then
               z(  1)=2
            endif
         case(2)
            if(x(139)>=0.)then
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
            if(x(140)<0.)then
               z(  2)=2
            endif
         case(2)
            if(x(140)>=0.)then
               z(  2)=1
            endif
      end select

!& db
      select case (z(  3))
         case(0)
            if(x(110)>prm(  8))then
               z(  3)=1
            elseif(x(110)<(-prm(  8)))then
               z(  3)=-1
            endif
         case(-1)
            if(x(110)>(-prm(  8)))then
               z(  3)=0
            endif
         case(1)
            if(x(110)<prm(  8))then
               z(  3)=0
            endif
      end select

!& lim
      select case (z(  4))
         case(0)
            if(x(111)>prm(  9))then
               z(  4)=1
            elseif(x(111)<prm( 10))then
               z(  4)=-1
            endif
         case(-1)
            if(x(111)>prm( 10))then
               z(  4)=0
            endif
         case(1)
            if(x(111)<prm(  9))then
               z(  4)=0
            endif
      end select

!& algeq

!& swsign
      select case (z(  5))
         case(1)
            if(x(143)<0.)then
               z(  5)=2
            endif
         case(2)
            if(x(143)>=0.)then
               z(  5)=1
            endif
      end select

!& algeq

!& inlim
      if (1.>= 0.005)then
         select case (z(  6))
            case(0)
               if(x(114)<prm( 14))then
                  z(  6)=-1
                  eqtyp( 28)=0
               elseif(x(114)>prm( 13))then
                  z(  6)= 1
                  eqtyp( 28)=0
               endif
            case(1)
               if(x(113)<0.)then
                  z(  6)=0
                  eqtyp( 28)=114
               endif
            case(-1)
               if(x(113)>0.)then
                  z(  6)=0
                  eqtyp( 28)=114
               endif
         end select
      else
         select case (z(  6))
            case(0)
               if(x(114)<prm( 14))then
                  z(  6)=-1
               elseif(x(114)>prm( 13))then
                  z(  6)= 1
               endif
            case(1)
               if(x(113)<prm( 13))then
                  z(  6)=0
               endif
            case(-1)
               if(x(113)>prm( 14))then
                  z(  6)=0
               endif
         end select
      endif

!& algeq

!& lim
      select case (z(  7))
         case(0)
            if(x(115)>prm( 13))then
               z(  7)=1
            elseif(x(115)<prm( 14))then
               z(  7)=-1
            endif
         case(-1)
            if(x(115)>prm( 14))then
               z(  7)=0
            endif
         case(1)
            if(x(115)<prm( 13))then
               z(  7)=0
            endif
      end select

!& tf1p1z

!& algeq

!& algeq

!& swsign
      select case (z(  8))
         case(1)
            if(x(142)<0.)then
               z(  8)=2
            endif
         case(2)
            if(x(142)>=0.)then
               z(  8)=1
            endif
      end select

!& tf1p

!& algeq

!& db
      select case (z(  9))
         case(0)
            if(x(121)>prm( 20))then
               z(  9)=1
            elseif(x(121)<prm( 19))then
               z(  9)=-1
            endif
         case(-1)
            if(x(121)>prm( 19))then
               z(  9)=0
            endif
         case(1)
            if(x(121)<prm( 20))then
               z(  9)=0
            endif
      end select

!& algeq

!& algeq

!& lim
      select case (z( 10))
         case(0)
            if(x(123)>0.)then
               z( 10)=1
            elseif(x(123)<(-999999999.))then
               z( 10)=-1
            endif
         case(-1)
            if(x(123)>(-999999999.))then
               z( 10)=0
            endif
         case(1)
            if(x(123)<0.)then
               z( 10)=0
            endif
      end select

!& lim
      select case (z( 11))
         case(0)
            if(x(124)>999999999.)then
               z( 11)=1
            elseif(x(124)<0.)then
               z( 11)=-1
            endif
         case(-1)
            if(x(124)>0.)then
               z( 11)=0
            endif
         case(1)
            if(x(124)<999999999.)then
               z( 11)=0
            endif
      end select

!& algeq

!& algeq

!& lim
      select case (z( 12))
         case(0)
            if(x(128)>prm( 23))then
               z( 12)=1
            elseif(x(128)<prm( 24))then
               z( 12)=-1
            endif
         case(-1)
            if(x(128)>prm( 24))then
               z( 12)=0
            endif
         case(1)
            if(x(128)<prm( 23))then
               z( 12)=0
            endif
      end select

!& pictllim
      select case (z( 13))
         case(0)
            if(x(150)>prm( 27))then
                  z( 13)=1
                  eqtyp( 46)=0
            elseif(x(150)<prm( 28))then
                  z( 13)=-1
                  eqtyp( 46)=0
            endif
         case(1)
            if(prm( 26)*x(129)<0.)then
                  z( 13)=0
                  eqtyp( 46)=150
            endif
         case(-1)
            if(prm( 26)*x(129)>0.)then
                  z( 13)=0
                  eqtyp( 46)=150
            endif
      end select

!& lim
      select case (z( 14))
         case(0)
            if(x(130)>prm( 27))then
               z( 14)=1
            elseif(x(130)<prm( 28))then
               z( 14)=-1
            endif
         case(-1)
            if(x(130)>prm( 28))then
               z( 14)=0
            endif
         case(1)
            if(x(130)<prm( 27))then
               z( 14)=0
            endif
      end select

!& tf1p

!& algeq

!& algeq

!& swsign
      select case (z( 15))
         case(1)
            if(x(141)<0.)then
               z( 15)=2
            endif
         case(2)
            if(x(141)>=0.)then
               z( 15)=1
            endif
      end select

!& algeq								!Aqui empiezan modelos de REEC_C

!& algeq

!& swsign
      select case (z( 16))
         case(1)
            if(x( 96)<0.)then
               z( 16)=2
            endif
         case(2)
            if(x( 96)>=0.)then
               z( 16)=1
            endif
      end select

!& swsign
      select case (z( 17))
         case(1)
            if(x( 97)<0.)then
               z( 17)=2
            endif
         case(2)
            if(x( 97)>=0.)then
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

!& int

!& algeq

!& lim
      select case (z( 18))
         case(0)
            if(x( 43)>prm( 70))then
               z( 18)=1
            elseif(x( 43)<prm( 71))then
               z( 18)=-1
            endif
         case(-1)
            if(x( 43)>prm( 71))then
               z( 18)=0
            endif
         case(1)
            if(x( 43)<prm( 70))then
               z( 18)=0
            endif
      end select

!& algeq

!& swsign
      select case (z( 19))
         case(1)
            if(x( 45)<0.)then
               z( 19)=2
            endif
         case(2)
            if(x( 45)>=0.)then
               z( 19)=1
            endif
      end select

!& algeq

!& swsign
      select case (z( 20))
         case(1)
            if(x( 47)<0.)then
               z( 20)=2
            endif
         case(2)
            if(x( 47)>=0.)then
               z( 20)=1
            endif
      end select

!& algeq

!& swsign
      select case (z( 21))
         case(1)
            if(x(103)<0.)then
               z( 21)=2
            endif
         case(2)
            if(x(103)>=0.)then
               z( 21)=1
            endif
      end select

!& swsign
      select case (z( 22))
         case(1)
            if(x(103)<0.)then
               z( 22)=2
            endif
         case(2)
            if(x(103)>=0.)then
               z( 22)=1
            endif
      end select

!& algeq

!& swsign
      select case (z( 23))
         case(1)
            if(x(103)<0.)then
               z( 23)=2
            endif
         case(2)
            if(x(103)>=0.)then
               z( 23)=1
            endif
      end select

!& min2v
      select case (z( 24))
         case(1)
            if(x( 55)>x( 52))then
               z( 24)=2
            endif
         case(2)
            if(x( 52)>x( 55))then
               z( 24)=1
            endif
      end select

!& algeq

!& algeq

!& swsign
      select case (z( 25))
         case(1)
            if(x(103)<0.)then
               z( 25)=2
            endif
         case(2)
            if(x(103)>=0.)then
               z( 25)=1
            endif
      end select

!& min2v
      select case (z( 26))
         case(1)
            if(x( 56)>x( 54))then
               z( 26)=2
            endif
         case(2)
            if(x( 54)>x( 56))then
               z( 26)=1
            endif
      end select

!& algeq

!& algeq

!& tf1p

!& algeq

!& db
      select case (z( 27))
         case(0)
            if(x( 72)>prm( 38))then
               z( 27)=1
            elseif(x( 72)<prm( 37))then
               z( 27)=-1
            endif
         case(-1)
            if(x( 72)>prm( 37))then
               z( 27)=0
            endif
         case(1)
            if(x( 72)<prm( 38))then
               z( 27)=0
            endif
      end select

!& algeq

!& lim
      select case (z( 28))
         case(0)
            if(x( 74)>prm( 40))then
               z( 28)=1
            elseif(x( 74)<prm( 41))then
               z( 28)=-1
            endif
         case(-1)
            if(x( 74)>prm( 41))then
               z( 28)=0
            endif
         case(1)
            if(x( 74)<prm( 40))then
               z( 28)=0
            endif
      end select

!& tf1p

!& algeq

!& swsign
      select case (z( 29))
         case(1)
            if(x(100)<0.)then
               z( 29)=2
            endif
         case(2)
            if(x(100)>=0.)then
               z( 29)=1
            endif
      end select

!& lim						
      select case (z( 30))
         case(0)
            if(x( 88)>prm( 42))then
               z( 30)=1
            elseif(x( 88)<prm( 43))then
               z( 30)=-1
            endif
         case(-1)
            if(x( 88)>prm( 43))then
               z( 30)=0
            endif
         case(1)
            if(x( 88)<prm( 42))then
               z( 30)=0
            endif
      end select

!& algeq

!& algeq

!& inlim
      if (1.>= 0.005)then
         select case (z( 31))
            case(0)
               if(x( 84)<prm( 45))then
                  z( 31)=-1
                  eqtyp( 94)=0
               elseif(x( 84)>prm( 44))then
                  z( 31)= 1
                  eqtyp( 94)=0
               endif
            case(1)
               if(x( 85)<0.)then
                  z( 31)=0
                  eqtyp( 94)= 84
               endif
            case(-1)
               if(x( 85)>0.)then
                  z( 31)=0
                  eqtyp( 94)= 84
               endif
         end select
      else
         select case (z( 31))
            case(0)
               if(x( 84)<prm( 45))then
                  z( 31)=-1
               elseif(x( 84)>prm( 44))then
                  z( 31)= 1
               endif
            case(1)
               if(x( 85)<prm( 44))then
                  z( 31)=0
               endif
            case(-1)
               if(x( 85)>prm( 45))then
                  z( 31)=0
               endif
         end select
      endif

!& algeq

!& swsign
      select case (z( 32))
         case(1)
            if(x(101)<0.)then
               z( 32)=2
            endif
         case(2)
            if(x(101)>=0.)then
               z( 32)=1
            endif
      end select

!& lim
      select case (z( 33))
         case(0)
            if(x( 82)>prm( 44))then
               z( 33)=1
            elseif(x( 82)<prm( 45))then
               z( 33)=-1
            endif
         case(-1)
            if(x( 82)>prm( 45))then
               z( 33)=0
            endif
         case(1)
            if(x( 82)<prm( 44))then
               z( 33)=0
            endif
      end select

!& algeq

!& algeq

!& invlim
      if (1.>= 0.005)then
         select case (z( 34))
            case(0)
               if(x( 78)<x( 58))then
                  z( 34)=-1
                  eqtyp(100)=0
               elseif(x( 78)>x( 57))then
                  z( 34)= 1
                  eqtyp(100)=0
               endif
            case(1)
               if(x( 79)<0.)then
                  z( 34)=0
                  eqtyp(100)= 78
               endif
            case(-1)
               if(x( 79)>0.)then
                  z( 34)=0
                  eqtyp(100)= 78
               endif
         end select
      else
         select case (z( 34))
            case(0)
               if(x( 78)<x( 58))then
                  z( 34)=-1
               elseif(x( 78)>x( 57))then
                  z( 34)= 1
               endif
            case(1)
               if(x( 79)<x( 57))then
                  z( 34)=0
               endif
            case(-1)
               if(x( 79)>x( 58))then
                  z( 34)=0
               endif
         end select
      endif

!& algeq

!& lim
      select case (z( 35))
         case(0)
            if(x( 49)>999999999.)then
               z( 35)=1
            elseif(x( 49)<0.01)then
               z( 35)=-1
            endif
         case(-1)
            if(x( 49)>0.01)then
               z( 35)=0
            endif
         case(1)
            if(x( 49)<999999999.)then
               z( 35)=0
            endif
      end select

!& algeq

!& algeq

!& int

!& swsign
      select case (z( 36))
         case(1)
            if(x(102)<0.)then
               z( 36)=2
            endif
         case(2)
            if(x(102)>=0.)then
               z( 36)=1
            endif
      end select

!& algeq

!& limvb
      select case (z( 37))
         case(0)
            if(x( 71)>x( 57))then
               z( 37)=1
            elseif(x( 71)<x( 58))then
               z( 37)=-1
            endif
         case(-1)
            if(x( 71)>x( 58))then
               z( 37)=0
            endif
         case(1)
            if(x( 71)<x( 57))then
               z( 37)=0
            endif
      end select

!& pwlin6
      if(x( 49)<prm(112))then
         z( 38)=1
      elseif(x( 49)>=prm(113))then
         z( 38)=  5
      elseif(prm(112)<=x( 49) .and. x( 49)<prm( 51))then
         z( 38)=  1
      elseif(prm( 51)<=x( 49) .and. x( 49)<prm( 53))then
         z( 38)=  2
      elseif(prm( 53)<=x( 49) .and. x( 49)<prm( 55))then
         z( 38)=  3
      elseif(prm( 55)<=x( 49) .and. x( 49)<prm( 57))then
         z( 38)=  4
      elseif(prm( 57)<=x( 49) .and. x( 49)<prm(113))then
         z( 38)=  5
      endif

!& pwlin6
      if(x( 49)<prm(114))then
         z( 39)=1
      elseif(x( 49)>=prm(115))then
         z( 39)=  5
      elseif(prm(114)<=x( 49) .and. x( 49)<prm( 59))then
         z( 39)=  1
      elseif(prm( 59)<=x( 49) .and. x( 49)<prm( 61))then
         z( 39)=  2
      elseif(prm( 61)<=x( 49) .and. x( 49)<prm( 63))then
         z( 39)=  3
      elseif(prm( 63)<=x( 49) .and. x( 49)<prm( 65))then
         z( 39)=  4
      elseif(prm( 65)<=x( 49) .and. x( 49)<prm(115))then
         z( 39)=  5
      endif

!& algeq

!& lim
      select case (z( 40))
         case(0)
            if(x( 67)>prm( 72))then
               z( 40)=1
            elseif(x( 67)<prm( 73))then
               z( 40)=-1
            endif
         case(-1)
            if(x( 67)>prm( 73))then
               z( 40)=0
            endif
         case(1)
            if(x( 67)<prm( 72))then
               z( 40)=0
            endif
      end select

!& int

!& algeq

!& inlim
      if (prm( 76)>= 0.005)then
         select case (z( 41))
            case(0)
               if(x( 65)<prm( 75))then
                  z( 41)=-1
                  eqtyp(115)=0
               elseif(x( 65)>prm( 74))then
                  z( 41)= 1
                  eqtyp(115)=0
               endif
            case(1)
               if(x( 70)<0.)then
                  z( 41)=0
                  eqtyp(115)= 65
               endif
            case(-1)
               if(x( 70)>0.)then
                  z( 41)=0
                  eqtyp(115)= 65
               endif
         end select
      else
         select case (z( 41))
            case(0)
               if(x( 65)<prm( 75))then
                  z( 41)=-1
               elseif(x( 65)>prm( 74))then
                  z( 41)= 1
               endif
            case(1)
               if(x( 70)<prm( 74))then
                  z( 41)=0
               endif
            case(-1)
               if(x( 70)>prm( 75))then
                  z( 41)=0
               endif
         end select
      endif

!& algeq

!& algeq

!& limvb
      select case (z( 42))
         case(0)
            if(x( 62)>x( 60))then
               z( 42)=1
            elseif(x( 62)<x( 61))then
               z( 42)=-1
            endif
         case(-1)
            if(x( 62)>x( 61))then
               z( 42)=0
            endif
         case(1)
            if(x( 62)<x( 60))then
               z( 42)=0
            endif
      end select

!& algeq								!Aqui empiezan modelos de REGC_A

!& algeq

!& algeq

!& tf1p2lim
      select case (z( 43))
         case(0)
            if(x(151)>prm(120)*prm( 84))then
               z( 43)=1
            elseif(x(151)<prm(119)*prm( 84))then
               z( 43)=-1
            endif
         case(1)
            if(1.*x( 18)-x( 17)<prm(120)*prm( 84))then
               z( 43)= 0
            endif
         case(-1)
            if(1.*x( 18)-x( 17)>prm(119)*prm( 84))then
               z( 43)= 0
            endif
      end select
      select case (z( 44))
         case(0)
            if(x( 17)>prm(124))then
               z( 44)=1
               eqtyp(123)=0
            elseif(x( 17)<prm(125))then
               z( 44)=-1
               eqtyp(123)=0
            endif
         case(1)
            if (x(151)<0.)then
               z( 44)= 0
               eqtyp(123)= 17
            endif
         case(-1)
            if(x(151)>0.)then
               z( 44)= 0
               eqtyp(123)= 17
            endif
      end select

!& algeq

!& algeq

!& lim
      select case (z( 45))
         case(0)
            if(x( 13)>999999999.)then
               z( 45)=1
            elseif(x( 13)<0.)then
               z( 45)=-1
            endif
         case(-1)
            if(x( 13)>0.)then
               z( 45)=0
            endif
         case(1)
            if(x( 13)<999999999.)then
               z( 45)=0
            endif
      end select

!& algeq

!& swsign
      select case (z( 46))
         case(1)
            if(x( 31)<0.)then
               z( 46)=2
            endif
         case(2)
            if(x( 31)>=0.)then
               z( 46)=1
            endif
      end select

!& algeq

!& lim
      select case (z( 47))
         case(0)
            if(x( 12)>999999999.)then
               z( 47)=1
            elseif(x( 12)<prm( 87))then
               z( 47)=-1
            endif
         case(-1)
            if(x( 12)>prm( 87))then
               z( 47)=0
            endif
         case(1)
            if(x( 12)<999999999.)then
               z( 47)=0
            endif
      end select

!& tf1p

!& algeq								!Salida Iqf del modelo REGC_A

!& pwlin4
      if(x( 10)<(-10.))then
         z( 48)=1
      elseif(x( 10)>=prm(116))then
         z( 48)=  3
      elseif((-10.)<=x( 10) .and. x( 10)<prm( 91))then
         z( 48)=  1
      elseif(prm( 91)<=x( 10) .and. x( 10)<prm( 90))then
         z( 48)=  2
      elseif(prm( 90)<=x( 10) .and. x( 10)<prm(116))then
         z( 48)=  3
      endif

!& algeq

!& swsign
      select case (z( 49))
         case(1)
            if(x( 30)<0.)then
               z( 49)=2
            endif
         case(2)
            if(x( 30)>=0.)then
               z( 49)=1
            endif
      end select

!& swsign
      select case (z( 50))
         case(1)
            if(x( 25)<0.)then
               z( 50)=2
            endif
         case(2)
            if(x( 25)>=0.)then
               z( 50)=1
            endif
      end select

!& algeq

!& lim
      select case (z( 51))
         case(0)
            if(x( 21)>prm( 84)*prm( 94))then
               z( 51)=1
            elseif(x( 21)<(-999999999.))then
               z( 51)=-1
            endif
         case(-1)
            if(x( 21)>(-999999999.))then
               z( 51)=0
            endif
         case(1)
            if(x( 21)<prm( 84)*prm( 94))then
               z( 51)=0
            endif
      end select

!& invlim
      if (prm( 84)>= 0.005)then
         select case (z( 52))
            case(0)
               if(x( 20)<x( 28))then
                  z( 52)=-1
                  eqtyp(139)=0
               elseif(x( 20)>x( 26))then
                  z( 52)= 1
                  eqtyp(139)=0
               endif
            case(1)
               if(x( 22)<0.)then
                  z( 52)=0
                  eqtyp(139)= 20
               endif
            case(-1)
               if(x( 22)>0.)then
                  z( 52)=0
                  eqtyp(139)= 20
               endif
         end select
      else
         select case (z( 52))
            case(0)
               if(x( 20)<x( 28))then
                  z( 52)=-1
               elseif(x( 20)>x( 26))then
                  z( 52)= 1
               endif
            case(1)
               if(x( 22)<x( 26))then
                  z( 52)=0
               endif
            case(-1)
               if(x( 22)>x( 28))then
                  z( 52)=0
               endif
         end select
      endif

!& pwlin4
      if(x(  5)<prm(117))then
         z( 53)=1
      elseif(x(  5)>=prm(118))then
         z( 53)=  3
      elseif(prm(117)<=x(  5) .and. x(  5)<prm( 88))then
         z( 53)=  1
      elseif(prm( 88)<=x(  5) .and. x(  5)<prm( 89))then
         z( 53)=  2
      elseif(prm( 89)<=x(  5) .and. x(  5)<prm(118))then
         z( 53)=  3
      endif

!& algeq								!Salida Ipf del modelo REGC_A

!& algeq								!Aquí empiezan modelos del PLL

!& swsign
      select case (z( 54))
         case(1)
            if(x( 32)<0.)then
               z( 54)=2
            endif
         case(2)
            if(x( 32)>=0.)then
               z( 54)=1
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

end subroutine inj_BESS
