v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 -340 210 -280 {lab=Vbias1}
N 210 -220 210 -170 {lab=#net1}
N 210 -400 290 -400 {lab=Vbias2}
N 290 -400 290 -250 {lab=Vbias2}
N 210 -310 260 -310 {lab=Vbias1}
N 260 -310 260 -140 {lab=Vbias1}
N 110 -370 170 -370 {lab=0}
N 110 -370 110 -110 {lab=0}
N 110 -110 210 -110 {lab=0}
N 520 -370 520 -330 {lab=#net2}
N 520 -270 520 -210 {lab=Vbias0}
N 520 -150 610 -150 {lab=Vbias3}
N 610 -300 610 -150 {lab=Vbias3}
N 520 -240 580 -240 {lab=Vbias0}
N 580 -400 580 -240 {lab=Vbias0}
N 410 -180 480 -180 {lab=VDD}
N 410 -430 410 -180 {lab=VDD}
N 410 -430 520 -430 {lab=VDD}
N 560 -300 610 -300 {lab=Vbias3}
N 560 -400 580 -400 {lab=Vbias0}
N 250 -250 290 -250 {lab=Vbias2}
N 250 -140 260 -140 {lab=Vbias1}
N 210 -460 410 -460 {lab=VDD}
N 410 -460 410 -430 {lab=VDD}
N 200 -90 520 -90 {lab=0}
N 200 -110 200 -90 {lab=0}
C {code_shown.sym} 180 -610 0 0 {name=include only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {symbols/pfet_03v3.sym} 190 -370 0 0 {name=M1
L=1u
W=2u
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
C {symbols/nfet_03v3.sym} 230 -250 0 1 {name=M4
L=1u
W=2u
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
C {symbols/nfet_03v3.sym} 230 -140 0 1 {name=M5
L=1u
W=2u
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
C {symbols/pfet_03v3.sym} 540 -300 2 0 {name=M9
L=1u
W=2u
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
C {symbols/pfet_03v3.sym} 540 -400 2 0 {name=M10
L=1u
W=2u
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
C {lab_pin.sym} 210 -250 0 0 {name=p3 sig_type=std_logic lab=0 text_size_0=0.1}
C {lab_pin.sym} 210 -140 0 0 {name=p4 sig_type=std_logic lab=0 text_size_0=0.1}
C {symbols/nfet_03v3.sym} 500 -180 2 1 {name=M6
L=1u
W=2u
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
C {lab_pin.sym} 520 -400 0 0 {name=p8 sig_type=std_logic lab=VDD text_size_0=0.1}
C {lab_pin.sym} 520 -300 0 0 {name=p9 sig_type=std_logic lab=VDD text_size_0=0.1}
C {lab_pin.sym} 520 -180 0 1 {name=p13 sig_type=std_logic lab=0 text_size_0=0.1}
C {isource.sym} 210 -430 0 0 {name=I0 value=500n}
C {isource.sym} 520 -120 0 0 {name=I1 value=500n}
C {lab_pin.sym} 210 -370 0 1 {name=p2 sig_type=std_logic lab=VDD text_size_0=0.1}
C {gnd.sym} 180 -110 0 0 {name=l1 lab=0}
C {iopin.sym} 520 -430 3 0 {name=p7 lab=VDD}
C {opin.sym} 290 -310 0 0 {name=p12 lab=Vbias2}
C {opin.sym} 260 -190 0 0 {name=p17 lab=Vbias1}
C {opin.sym} 580 -350 0 0 {name=p14 lab=Vbias0}
C {opin.sym} 610 -230 0 0 {name=p15 lab=Vbias3}
