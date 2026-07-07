v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 -160 600 -90 {lab=vout}
N 880 -190 940 -190 {lab=vout}
N 940 -190 940 -170 {lab=vout}
N 640 -370 640 -290 {lab=#net1}
N 220 -130 280 -130 {lab=vin}
N 320 -130 320 -100 {lab=0}
N 320 -370 320 -260 {lab=#net1}
N 320 -200 600 -200 {lab=#net2}
N 600 -230 600 -200 {lab=#net2}
N 120 -370 120 -180 {lab=#net1}
N 120 -370 320 -370 {lab=#net1}
N 320 -370 640 -370 {lab=#net1}
N 320 -200 320 -160 {lab=#net2}
N 220 -230 280 -230 {lab=#net3}
N 60 -180 120 -180 {lab=#net1}
N 60 -180 60 70 {lab=#net1}
N 60 70 620 70 {lab=#net1}
N 320 -260 320 -230 {lab=#net1}
N 600 -90 900 -90 {lab=vout}
N 900 -190 900 -90 {lab=vout}
C {symbols/nfet_03v3.sym} 300 -130 0 0 {name=M1
L=2u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 300 -230 0 0 {name=M2
L=5u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {AURA/OTA_bias.sym} 690 80 3 0 {name=x1}
C {AURA/folded_cascode_OTA.sym} 730 -190 0 0 {name=x2}
C {vsource.sym} 120 -150 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 120 -120 0 0 {name=l1 lab=0}
C {gnd.sym} 320 -100 0 0 {name=l2 lab=0}
C {gnd.sym} 940 -110 0 0 {name=l3 lab=0}
C {vsource.sym} 220 -100 0 0 {name=Vin value="sin(0.6 0.1 5k)" savecurrent=false}
C {gnd.sym} 220 -70 0 0 {name=Vin1 lab=0}
C {vsource.sym} 220 -200 0 0 {name=Vbiasl value=2.4 savecurrent=false}
C {gnd.sym} 220 -170 0 0 {name=Vbiasl1 lab=0}
C {code_shown.sym} 70 -550 0 0 {name=include only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {code_shown.sym} 1240 -10 0 0 {name=s1 only_toplevel=false value="
.tran 10u 100m
.control
run
plot v(vin) v(vout)
.endc
"}
C {lab_pin.sym} 260 -130 1 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 940 -190 1 0 {name=p2 sig_type=std_logic lab=vout}
C {capa-2.sym} 940 -140 0 0 {name=C1
m=1
value=50p
footprint=1206
device=polarized_capacitor}
