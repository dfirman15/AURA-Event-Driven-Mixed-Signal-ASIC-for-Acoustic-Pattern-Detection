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
N 330 -930 330 -920 {lab=#net2}
N 330 -930 410 -930 {lab=#net2}
N 270 -1000 270 -870 {lab=Vinp}
N 270 -1000 410 -1000 {lab=Vinp}
N 560 -700 750 -890 {lab=0}
N 620 -900 690 -900 {lab=Vout}
N 690 -960 690 -900 {lab=Vout}
N 460 -840 460 -650 {lab=#net3}
N 480 -840 480 -650 {lab=#net4}
N 520 -840 520 -650 {lab=#net5}
N 300 -700 300 -650 {lab=#net1}
N 320 -650 330 -810 {lab=0}
N 230 -590 260 -580 {lab=#net6}
N 230 -550 260 -560 {lab=#net7}
N 320 -650 320 -490 {lab=0}
N 80 -490 320 -490 {lab=0}
N 80 -510 80 -490 {lab=0}
N 80 -700 80 -630 {lab=#net1}
N 80 -700 150 -700 {lab=#net1}
N 560 -900 620 -900 {lab=Vout}
N 330 -920 330 -900 {lab=#net2}
N 500 -840 500 -650 {lab=#net8}
N 330 -900 500 -900 {lab=#net2}
N 360 -940 360 -930 {lab=#net2}
N 380 -840 380 -810 {lab=0}
C {vsource.sym} 200 -840 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -810 0 0 {name=l1 lab=0}
C {vsource.sym} 270 -840 0 0 {name=Vplus value="DC 1.65 AC 1" savecurrent=false}
C {code_shown.sym} 900 -920 0 0 {name=s1 only_toplevel=false value="
.control
set color0=white  ;
set color1=black  ;
set color2=blue   ;
op
ac dec 10 1 100k
plot db(vout)
plot phase(vout)
.endc
"}
C {lab_pin.sym} 750 -960 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {code_shown.sym} -100 -1250 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical"}
C {lab_pin.sym} 280 -1000 1 0 {name=p2 sig_type=std_logic lab=Vinp}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_OTA_bias_core.sym} 400 -560 0 0 {name=x1 ratio=0.25}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_beta_multiplier_reference.sym} 80 -570 0 0 {name=x3 length=410u}
C {capa.sym} 750 -920 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 380 -870 0 0 {name=C2
m=1
value=10000g
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 530 -900 1 0 {name=L2
m=1
value=10000g
footprint=1206
device=inductor}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_folded_cascode_OTA.sym} 530 -950 0 0 {name=x2}
