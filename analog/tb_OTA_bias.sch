v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -240 -90 -240 -40 {lab=#net1}
N -240 -90 0 -90 {lab=#net1}
N 0 -90 0 -80 {lab=#net1}
N -240 20 -240 60 {lab=0}
N -240 60 -0 60 {lab=0}
N -0 50 -0 60 {lab=0}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/OTA_bias.sym} -10 -10 0 0 {name=x1 cur_factor=1}
C {vsource.sym} -240 -10 0 0 {name=Vdd value=3.3 savecurrent=false}
C {gnd.sym} -110 60 0 0 {name=l1 lab=0}
C {lab_pin.sym} 140 -50 2 0 {name=p1 sig_type=std_logic lab=vbias0}
C {lab_pin.sym} 140 -30 2 0 {name=p2 sig_type=std_logic lab=vbias1}
C {lab_pin.sym} 140 -10 2 0 {name=p3 sig_type=std_logic lab=vbias2}
C {lab_pin.sym} 140 10 2 0 {name=p4 sig_type=std_logic lab=vbias3}
C {code_shown.sym} -500 -260 0 0 {name=include only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {code_shown.sym} 300 -100 0 0 {name=s1 only_toplevel=false value="
.control
alter @m.x1.x1.xm6.m0[w] = 10u

dc Vdd 0 3.3 0.05

plot (v(vbias0) - v(vbias3)) v(vbias1) v(vbias2)
plot @m.x1.x1.x1.xm6.m0[id] @m.x1.x1.x1.xm7.m0[id]
plot @m.x1.x1.xm2.m0[id] @m.x1.x1.xm6.m0[id] @m.x1.x1.xm9.m0[id] @m.x1.x1.xm1.m0[id] @m.x1.x1.xm5.m0[id] @m.x1.x1.xm3.m0[id]

op
print @m.x1.x1.xm2.m0[id]
print @m.x1.x1.xm6.m0[id]
print @m.x1.x1.xm9.m0[id]
print @m.x1.x1.xm1.m0[id]
print @m.x1.x1.xm5.m0[id]
print @m.x1.x1.xm3.m0[id]	
.endc
"}
