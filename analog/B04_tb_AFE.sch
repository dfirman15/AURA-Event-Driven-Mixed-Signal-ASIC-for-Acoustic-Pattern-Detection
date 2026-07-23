v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -460 -20 -30 -20 {lab=#net1}
N -460 180 -60 180 {lab=0}
N -60 180 -30 180 {lab=0}
N -30 80 -30 180 {lab=0}
N -30 -20 320 -20 {lab=#net1}
N 110 10 170 10 {lab=Vbpf}
N 110 10 110 30 {lab=Vbpf}
N 70 30 110 30 {lab=Vbpf}
N -220 -20 -220 220 {lab=#net1}
N -250 180 -250 340 {lab=0}
N -250 340 -220 340 {lab=0}
N -70 300 120 300 {lab=#net2}
N 120 50 120 300 {lab=#net2}
N 120 50 170 50 {lab=#net2}
N -30 180 320 180 {lab=0}
N 320 80 320 180 {lab=0}
N 870 60 920 60 {lab=#net3}
N 470 20 470 30 {lab=Venv}
N 320 180 530 180 {lab=0}
N 530 100 530 180 {lab=0}
N 530 180 860 180 {lab=0}
N 860 180 870 80 {lab=0}
N 870 -20 870 20 {lab=#net1}
N 320 -20 870 -20 {lab=#net1}
N 870 40 910 40 {lab=Vout}
N 530 20 570 20 {lab=#net4}
N 530 20 530 40 {lab=#net4}
N 550 40 570 40 {lab=Venv}
N 550 10 550 40 {lab=Venv}
N 500 10 550 10 {lab=Venv}
N 500 10 500 20 {lab=Venv}
N 470 20 500 20 {lab=Venv}
N -180 30 -130 30 {lab=Vlna}
N -180 30 -180 80 {lab=Vlna}
N -210 80 -180 80 {lab=Vlna}
N -760 180 -460 180 {lab=0}
N -900 180 -760 180 {lab=0}
N -900 150 -900 180 {lab=0}
N -900 -20 -460 -20 {lab=#net1}
N -900 -20 -900 90 {lab=#net1}
N -820 50 -490 50 {lab=#net5}
N -820 50 -820 90 {lab=#net5}
N -820 150 -820 180 {lab=0}
N -490 0 -490 50 {lab=#net5}
N -490 0 -360 0 {lab=#net5}
N -360 0 -360 10 {lab=#net5}
N -760 110 -490 110 {lab=#net6}
N -760 110 -760 120 {lab=#net6}
N -70 300 -70 360 {lab=#net2}
N -370 360 -70 360 {lab=#net2}
N -370 210 -370 360 {lab=#net2}
N -70 260 -50 260 {lab=#net7}
N -50 260 -50 380 {lab=#net7}
N -390 380 -50 380 {lab=#net7}
N -390 210 -390 380 {lab=#net7}
N -50 310 670 310 {lab=#net7}
N 710 340 940 340 {lab=#net3}
N 940 60 940 340 {lab=#net3}
N 920 60 940 60 {lab=#net3}
N 710 -20 710 280 {lab=#net1}
N 710 280 710 310 {lab=#net1}
C {code_shown.sym} -560 -270 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {code_shown.sym} 300 380 0 0 {name=s1 only_toplevel=false value="

.control
set color0=white  ;
set color1=black  ; 
set color5=darkgreen  ; 
op
print i(Vdd)
tran 1u 20m
plot v(Vlna) v(Vbpf) v(Venv) v(Vout)
.endc
"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF_4_order.sym} -30 40 0 0 {name=x1}
C {vsource.sym} -900 120 0 0 {name=V1 value=3.3 savecurrent=false}
C {bsource.sym} -760 150 0 0 {name=B1 VAR=V FUNC="1.65 + 5m * (
+ time < 2m  ? sin(2*3.14159*1000*time)  :
+ time < 6m  ? sin(2*3.14159*3000*time)  :
+ time < 10m  ? sin(2*3.14159*5000*time)  :
+ time < 14m  ? sin(2*3.14159*7000*time)  :
+ sin(2*3.14159*9000*time) )" m=1}
C {gnd.sym} -60 180 0 0 {name=l1 lab=0}
C {lab_pin.sym} 110 10 1 0 {name=p1 sig_type=std_logic lab=Vbpf}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_envelope_detector.sym} 320 30 0 0 {name=x2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_beta_multiplier_reference.sym} -220 280 0 0 {name=x3 length=410u}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_comparator.sym} 720 50 0 0 {name=x4}
C {vsource.sym} 530 70 0 0 {name=V2 value=1.02 savecurrent=false}
C {lab_pin.sym} 510 10 1 0 {name=p2 sig_type=std_logic lab=Venv}
C {lab_pin.sym} 910 40 1 0 {name=p3 sig_type=std_logic lab=Vout}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNA.sym} -380 80 0 0 {name=x5}
C {lab_pin.sym} -170 30 1 0 {name=p4 sig_type=std_logic lab=Vlna}
C {vsource.sym} -820 120 0 0 {name=V3 value=1.65 savecurrent=false}
C {symbols/pfet_03v3.sym} 690 310 0 0 {name=M1
L=4u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
