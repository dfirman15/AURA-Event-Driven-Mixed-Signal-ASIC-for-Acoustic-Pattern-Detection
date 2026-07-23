v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 730 -480 730 -460 {lab=#net1}
N 730 -480 890 -480 {lab=#net1}
N 730 -380 890 -380 {lab=0}
N 730 -400 730 -380 {lab=0}
C {code_shown.sym} 370 -800 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_clock_gen.sym} 890 -430 0 0 {name=x1}
C {vsource.sym} 730 -430 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 800 -380 0 0 {name=l1 lab=0}
C {lab_pin.sym} 980 -430 2 0 {name=p1 sig_type=std_logic lab=vout}
C {code_shown.sym} 1130 -460 0 0 {name=s1 only_toplevel=false value=".tran 10n 0.5m
.plot V(Vout)"}
