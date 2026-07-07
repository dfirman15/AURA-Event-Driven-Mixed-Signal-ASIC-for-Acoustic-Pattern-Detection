v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -260 220 -10 220 {lab=#net1}
N -260 100 -260 220 {lab=#net1}
N -330 100 -260 100 {lab=#net1}
N -330 100 -330 110 {lab=#net1}
N -260 -170 -260 100 {lab=#net1}
N -260 -170 10 -170 {lab=#net1}
N 10 -170 10 -140 {lab=#net1}
N -130 -60 -130 -50 {lab=#net2}
N -130 -80 -130 -60 {lab=#net2}
N -130 -80 -30 -80 {lab=#net2}
N 250 -40 250 60 {lab=vout}
N -90 50 -90 60 {lab=#net3}
N -90 50 -80 50 {lab=#net3}
N -80 50 -30 -10 {lab=#net3}
C {AURA/OTA_bias.sym} 60 230 3 0 {name=x1}
C {AURA/folded_cascode_OTA.sym} 100 -40 0 0 {name=x2}
C {vsource.sym} -330 140 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -330 170 0 0 {name=l1 lab=0}
C {vsource.sym} -130 -20 0 0 {name=V2 value="dc 1.35 ac 1" savecurrent=false}
C {gnd.sym} -130 10 0 0 {name=l2 lab=0}
C {code_shown.sym} -270 -340 0 0 {name=include only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {code_shown.sym} 410 -70 0 0 {name=s1 only_toplevel=false value="
.op
.control
ac dec 10 1 100MEG
plot vdb(vout)
plot ph(vout)
.endc
"}
C {lab_pin.sym} 250 30 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vsource.sym} -90 90 0 0 {name=V3 value=1.35 savecurrent=false}
C {gnd.sym} -90 120 0 0 {name=l3 lab=0}
C {capa.sym} 250 90 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 250 120 0 0 {name=l4 lab=0}
C {lab_pin.sym} 20 80 1 0 {name=p2 sig_type=std_logic lab=vbias0}
C {lab_pin.sym} 40 80 1 0 {name=p3 sig_type=std_logic lab=vbias1}
C {lab_pin.sym} 60 80 1 0 {name=p4 sig_type=std_logic lab=vbias2}
C {lab_pin.sym} 80 80 1 0 {name=p5 sig_type=std_logic lab=vbias3}
