v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -230 40 -160 40 {lab=0}
N -160 40 -160 80 {lab=0}
N -160 80 -90 80 {lab=0}
N -90 80 40 80 {lab=0}
N 40 50 40 80 {lab=0}
N -90 20 -70 20 {lab=sw_i}
N -160 -20 -70 -20 {lab=#net1}
N -230 -80 -230 -20 {lab=#net2}
N -230 -80 40 -80 {lab=#net2}
N 40 -80 40 -50 {lab=#net2}
N 130 0 180 0 {lab=sw_o}
N -180 -20 -160 -20 {lab=#net1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_switch.sym} 40 0 0 0 {name=x1}
C {vsource.sym} -180 10 0 0 {name=Vdig value=3.3 savecurrent=false}
C {vsource.sym} -90 50 0 0 {name=Vin value="DC 1.65" savecurrent=false}
C {vsource.sym} -230 10 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -120 80 0 0 {name=l1 lab=0}
C {isource.sym} 180 30 0 0 {name=I0 value=1u}
C {lab_pin.sym} -90 20 0 0 {name=p1 sig_type=std_logic lab=sw_i}
C {lab_pin.sym} 140 0 1 0 {name=p2 sig_type=std_logic lab=sw_o}
C {code_shown.sym} 230 0 0 0 {name=s1 only_toplevel=false value="
.dc Vin 0 3.3 0.05
.control
run
plot -(v(sw_o)-v(sw_i))/1u
.endc
"}
C {code_shown.sym} -190 -200 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ss
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
