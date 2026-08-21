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
N 440 -380 770 -380 {lab=#net1}
N 440 -260 770 -260 {lab=0}
N 770 -380 930 -380 {lab=#net1}
N 930 -380 930 -350 {lab=#net1}
N 610 -380 610 -350 {lab=#net1}
N 610 -290 610 -260 {lab=0}
N 770 -260 930 -260 {lab=0}
N 930 -290 930 -260 {lab=0}
C {vsource.sym} 230 -320 0 0 {name=V_DD value=3.3 savecurrent=false}
C {gnd.sym} 440 -260 0 0 {name=l1 lab=0}
C {code_shown.sym} 310 -170 0 0 {name=s1 only_toplevel=false value="
.control
tran 100n 50m

echo Memeriksa kestabilan Transient...
plot v(VbiasP) v(VbiasN) ylabel 'Voltage (V)' xlabel 'Time (s)' title 'BMR Node Voltages (Startup)'
plot @m.x1.xm3.m0[id] ylabel 'Current (A)' xlabel 'Time (s)' title 'BMR Reference Current (Startup)'

* ============================================
* Plot 1: Reference Current vs VDD Sweep
* ============================================
save @m.x1.xm3.m0[id]
dc V_DD 0 4 0.01
plot @m.x1.xm3.m0[id]
* ============================================
* Plot 2: Current Usage vs VDD Sweep
* ============================================
save i(v_dd)
dc V_DD 0 4 0.01
plot -i(v_dd)

* ============================================
* Plot 3: Reference Current vs Temperature Sweep
* ============================================
* Set VDD to nominal working voltage before temp sweep
save @m.x1.xm3.m0[id]
alter V_DD = 3.3
dc temp -50 150 1
plot @m.x1.xm3.m0[id]

.endc

"}
C {code_shown.sym} 50 -550 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BMR.sym} 460 -320 0 0 {name=x1}
C {lab_pin.sym} 610 -330 2 0 {name=p1 sig_type=std_logic lab=VbiasP}
C {lab_pin.sym} 610 -310 2 0 {name=p2 sig_type=std_logic lab=VbiasN}
