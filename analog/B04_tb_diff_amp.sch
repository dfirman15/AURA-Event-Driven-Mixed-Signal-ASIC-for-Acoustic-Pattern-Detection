v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 370 -310 370 -290 {lab=0}
N 370 -290 610 -290 {lab=0}
N 310 -310 310 -290 {lab=0}
N 310 -290 380 -290 {lab=0}
N 310 -400 310 -370 {lab=V_IN}
N 310 -400 530 -400 {lab=V_IN}
N 530 -400 530 -360 {lab=V_IN}
N 530 -320 710 -320 {lab=Vo}
N 710 -340 710 -320 {lab=Vo}
N 780 -310 780 -290 {lab=0}
N 610 -290 780 -290 {lab=0}
N 780 -400 780 -370 {lab=#net1}
N 610 -400 780 -400 {lab=#net1}
N 610 -400 610 -390 {lab=#net1}
N 370 -370 510 -370 {lab=#net2}
N 510 -370 510 -340 {lab=#net2}
N 510 -340 530 -340 {lab=#net2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_diff_amp.sym} 600 -340 0 0 {name=x1}
C {gnd.sym} 610 -290 0 0 {name=l1 lab=0}
C {vsource.sym} 370 -340 0 0 {name=V1 value=0.65 savecurrent=false}
C {vsource.sym} 310 -340 0 0 {name=V_IN value=0.8 savecurrent=false}
C {vsource.sym} 780 -340 0 0 {name=V3 value=3.3 savecurrent=false}
C {code_shown.sym} -40 -620 0 0 {name=include only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {code_shown.sym} 830 -330 0 0 {name=s1 only_toplevel=false value="
.control
op
save all

print allv
.endc
"}
C {lab_pin.sym} 710 -320 0 0 {name=p1 sig_type=std_logic lab=Vo}
C {lab_pin.sym} 310 -400 0 0 {name=p2 sig_type=std_logic lab=V_IN}
