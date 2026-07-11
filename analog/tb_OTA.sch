v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -1070 200 -870 {lab=#net1}
N 200 -1070 450 -1070 {lab=#net1}
N 450 -1070 450 -1060 {lab=#net1}
N 150 -870 200 -870 {lab=#net1}
N 150 -870 150 -700 {lab=#net1}
N 150 -700 430 -700 {lab=#net1}
N 200 -810 440 -810 {lab=0}
N 440 -850 440 -810 {lab=0}
N 440 -810 560 -810 {lab=0}
N 560 -810 560 -700 {lab=0}
N 690 -960 750 -960 {lab=Vout}
N 750 -960 750 -950 {lab=Vout}
N 330 -920 330 -870 {lab=#net2}
N 330 -930 330 -920 {lab=#net2}
N 330 -930 410 -930 {lab=#net2}
N 270 -1000 270 -870 {lab=#net3}
N 270 -1000 410 -1000 {lab=#net3}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/OTA_bias.sym} 500 -690 3 0 {name=x1 length=410u}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/folded_cascode_OTA.sym} 540 -960 0 0 {name=x2}
C {vsource.sym} 200 -840 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -810 0 0 {name=l1 lab=0}
C {capa.sym} 750 -920 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 750 -890 0 0 {name=l2 lab=0}
C {vsource.sym} 330 -840 0 0 {name=V_min value=1.659 savecurrent=false}
C {vsource.sym} 270 -840 0 0 {name=V+ value="dc 1.65 ac 1" savecurrent=false}
C {code_shown.sym} 900 -920 0 0 {name=s1 only_toplevel=false value="
.control
op
ac dec 20 1 100Meg
plot db(v(Vout))
plot cph(v(Vout))
.endc
"}
C {lab_pin.sym} 750 -960 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {code_shown.sym} -100 -1250 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
