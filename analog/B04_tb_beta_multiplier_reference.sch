v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 230 -290 230 -260 {lab=0}
N 230 -260 440 -260 {lab=0}
N 230 -380 440 -380 {lab=#net1}
N 230 -380 230 -350 {lab=#net1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_beta_multiplier_reference.sym} 440 -320 0 0 {name=x1}
C {vsource.sym} 230 -320 0 0 {name=V_DD value=3 savecurrent=false}
C {gnd.sym} 440 -260 0 0 {name=l1 lab=0}
C {code_shown.sym} 310 -170 0 0 {name=s1 only_toplevel=false value="
.control
save @m.x1.xm3.m0[id]
dc temp -40 125 1
plot @m.x1.xm3.m0[id]
.endc
"}
C {code_shown.sym} 50 -550 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
