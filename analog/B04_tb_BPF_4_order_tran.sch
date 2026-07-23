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
N -200 -0 -100 0 {lab=Vin}
N -270 -50 -270 -0 {lab=#net1}
N -270 -50 -0 -50 {lab=#net1}
N 100 -0 120 -0 {lab=Vout}
C {vsource.sym} -200 30 0 0 {name=Vin value="SINE(1.65 0.05 18k 0 0)" savecurrent=false}
C {vsource.sym} -270 30 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -70 90 0 0 {name=l1 lab=0}
C {lab_pin.sym} 120 0 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {code_shown.sym} -520 -270 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {code_shown.sym} 850 -100 0 0 {name=s1 only_toplevel=false value="
.options method=gear
.control
tran 1u 5m
plot v(vin) v(vout)
four 5k V(vout)
.endc
"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF_4_order.sym} 0 10 0 0 {name=X1}
C {lab_pin.sym} -160 0 1 0 {name=p2 sig_type=std_logic lab=Vin}
