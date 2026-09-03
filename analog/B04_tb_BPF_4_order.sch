v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -270 60 -200 60 {lab=0}
N -200 60 0 60 {lab=0}
N -70 60 -70 90 {lab=0}
N -200 -0 -100 0 {lab=Vin}
N -270 -50 -270 -0 {lab=#net1}
N -100 -30 -100 -0 {lab=Vin}
N -90 170 -10 170 {lab=#net2}
N -90 190 -10 190 {lab=#net3}
N -90 210 -40 210 {lab=0}
N -40 60 -40 210 {lab=0}
N -90 -50 -90 150 {lab=#net1}
N -80 10 -80 170 {lab=#net2}
N 290 140 290 170 {lab=#net1}
N -90 140 290 140 {lab=#net1}
N -40 210 290 210 {lab=0}
N 290 190 340 190 {lab=Vdd05}
N -270 -50 -90 -50 {lab=#net1}
N -90 -140 -90 -50 {lab=#net1}
N -90 -140 700 -140 {lab=#net1}
N 700 -140 700 -80 {lab=#net1}
N 290 210 700 210 {lab=0}
N 700 -40 700 210 {lab=0}
N -100 -20 400 -20 {lab=Vin}
N 340 0 340 190 {lab=Vdd05}
N 340 -0 400 0 {lab=Vdd05}
N -80 20 400 20 {lab=#net2}
N -30 40 -30 190 {lab=#net3}
N -30 40 400 40 {lab=#net3}
N 100 -50 180 -50 {lab=0}
N 180 -50 260 -50 {lab=0}
N 130 -50 130 210 {lab=0}
N 260 -110 290 -110 {lab=#net4}
N 290 -110 290 -40 {lab=#net4}
N 290 -40 400 -40 {lab=#net4}
N 180 -120 180 -110 {lab=#net5}
N 180 -120 300 -120 {lab=#net5}
N 300 -120 300 -60 {lab=#net5}
N 300 -60 400 -60 {lab=#net5}
N 100 -130 100 -110 {lab=#net6}
N 100 -130 400 -130 {lab=#net6}
N 400 -130 400 -80 {lab=#net6}
C {vsource.sym} -200 30 0 0 {name=Vin value="DC 1.65 AC 1 SINE(1.65 1m 2k 0 0)" savecurrent=false}
C {vsource.sym} -270 30 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -70 90 0 0 {name=l1 lab=0}
C {lab_pin.sym} 700 -60 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {code_shown.sym} -520 -270 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ff
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_ff
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_ff
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice diode_ff"}
C {code_shown.sym} 850 -100 0 0 {name=s1 only_toplevel=false value="
.control
set color0=white  ;
set color1=black  ;
set color2=blue   ; 

op
print i(VDD)

echo (PMOS XM2 & NMOS XM6):
print @m.x1.x1.xm2.m0[id] @m.x1.x1.xm6.m0[id]

echo (PMOS XM3 & NMOS XM7):
print @m.x1.x1.xm3.m0[id] @m.x1.x1.xm7.m0[id]

echo Bias Core x8:
print @m.x1.x8.xm2.m0[id] @m.x1.x8.xm3.m0[id]

echo Bias Core x9:
print @m.x1.x9.xm2.m0[id] @m.x1.x9.xm3.m0[id]

echo Bias Core x10:
print @m.x1.x10.xm2.m0[id] @m.x1.x10.xm3.m0[id]

echo Bias Core x11:
print @m.x1.x11.xm2.m0[id] @m.x1.x11.xm3.m0[id]

ac dec 100 10 1Meg
plot db(vout)
plot phase(vout)

meas ac Gain_Peak_dB max vdb(vout)
let peak_target = Gain_Peak_dB - 0.01
meas ac Freq_Center WHEN vdb(vout)=peak_target
let f_low = Freq_Center - 2000
let f_high = Freq_Center + 2000
meas ac Gain_Minus_2000Hz find vdb(vout) at=$&f_low
meas ac Gain_Plus_2000Hz find vdb(vout) at=$&f_high

tran 1u 5m
plot v(Vdd05) v(Vout)
.endc

"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF4.sym} 550 -20 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BMR.sym} -240 180 0 0 {name=x2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_VDD05.sym} 140 190 0 0 {name=x3}
C {lab_pin.sym} -100 -20 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {vsource.sym} 100 -80 0 0 {name=Vcap0 value=0 savecurrent=false}
C {vsource.sym} 180 -80 0 0 {name=Vcap1 value=3.3 savecurrent=false}
C {vsource.sym} 260 -80 0 0 {name=Vcap2 value=3.3 savecurrent=false}
C {lab_pin.sym} 340 140 2 0 {name=p3 sig_type=std_logic lab=Vdd05}
