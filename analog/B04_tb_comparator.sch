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
N -200 -0 -100 0 {lab=inn}
N -270 -50 -270 -0 {lab=#net1}
N -270 -50 -0 -50 {lab=#net1}
N -100 -20 -100 -0 {lab=inn}
N -100 -20 70 -20 {lab=inn}
N -40 -0 70 0 {lab=inp}
N 370 20 420 20 {lab=ib}
N 480 -50 480 20 {lab=#net1}
N 0 -50 480 -50 {lab=#net1}
N 370 -50 370 -20 {lab=#net1}
N 370 40 370 70 {lab=0}
N -0 60 370 70 {lab=0}
C {vsource.sym} -200 30 0 0 {name=Vinn value=1.65 savecurrent=false}
C {vsource.sym} -270 30 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -70 90 0 0 {name=l1 lab=0}
C {code_shown.sym} -520 -270 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {code_shown.sym} 850 -100 0 0 {name=s1 only_toplevel=false value="
.control
tran 10n 4u
plot v(Q_bar) vs v(inp) retraceplot
.endc
"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_comparator.sym} 220 10 0 0 {name=x3}
C {vsource.sym} -40 30 0 0 {name=Vinp value="PWL(0 1.5 2u 1.8 4u 1.5)" savecurrent=false}
C {isource.sym} 450 20 1 0 {name=I0 value=100n}
C {lab_pin.sym} 370 0 2 0 {name=p1 sig_type=std_logic lab=Q_bar}
C {lab_pin.sym} 400 20 3 0 {name=p2 sig_type=std_logic lab=ib}
C {lab_pin.sym} -100 -20 0 0 {name=p3 sig_type=std_logic lab=inn}
C {lab_pin.sym} -40 0 0 0 {name=p4 sig_type=std_logic lab=inp}
