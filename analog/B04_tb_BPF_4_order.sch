v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -270 60 -200 60 {lab=0}
N -200 60 0 60 {lab=0}
N 0 50 0 60 {lab=0}
N -70 60 -70 90 {lab=0}
N -200 -0 -100 0 {lab=#net1}
N -270 -50 -270 -0 {lab=#net2}
N -270 -50 -0 -50 {lab=#net2}
N 100 -0 120 -0 {lab=Vout}
C {vsource.sym} -200 30 0 0 {name=Vin value="DC 1.65 AC 1" savecurrent=false}
C {vsource.sym} -270 30 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -70 90 0 0 {name=l1 lab=0}
C {lab_pin.sym} 120 0 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {code_shown.sym} -520 -270 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
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

ac dec 100 10 100k
plot db(vout)
plot phase(vout)

meas ac Gain_Peak_dB max vdb(vout)
let peak_target = Gain_Peak_dB - 0.01
meas ac Freq_Center WHEN vdb(vout)=peak_target
let f_low = Freq_Center - 2000
let f_high = Freq_Center + 2000
meas ac Gain_Minus_2000Hz find vdb(vout) at=$&f_low
meas ac Gain_Plus_2000Hz find vdb(vout) at=$&f_high

.endc
"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF_4_order.sym} 0 10 0 0 {name=X1}
