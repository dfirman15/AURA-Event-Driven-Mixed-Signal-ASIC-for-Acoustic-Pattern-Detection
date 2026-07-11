v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 360 -260 400 -260 {lab=Vin}
N 360 -260 360 -230 {lab=Vin}
N 400 -200 710 -200 {lab=xxx}
N 710 -200 930 -200 {lab=xxx}
N 660 -130 930 -130 {lab=GND}
N 930 -140 930 -130 {lab=GND}
N 400 -230 510 -230 {lab=GND}
N 510 -230 510 -130 {lab=GND}
N 650 -360 650 -330 {lab=#net1}
N 610 -360 650 -360 {lab=#net1}
N 610 -330 610 -300 {lab=GND}
N 610 -300 610 -130 {lab=GND}
N 650 -330 650 -170 {lab=#net1}
N 650 -170 670 -170 {lab=#net1}
N 500 -420 500 -390 {lab=#net2}
N 500 -360 610 -360 {lab=#net1}
N 540 -390 540 -360 {lab=#net1}
N 500 -480 500 -450 {lab=#net3}
N 540 -450 540 -420 {lab=#net2}
N 500 -540 500 -510 {lab=#net4}
N 540 -510 540 -480 {lab=#net3}
N 500 -550 500 -540 {lab=#net4}
N 500 -480 540 -480 {lab=#net3}
N 500 -420 540 -420 {lab=#net2}
N 500 -610 500 -580 {lab=VDD}
N 540 -580 540 -550 {lab=#net4}
N 500 -620 500 -610 {lab=VDD}
N 500 -550 540 -550 {lab=#net4}
N 710 -170 730 -170 {lab=GND}
N 730 -170 730 -130 {lab=GND}
N 710 -140 710 -130 {lab=GND}
N 610 -130 660 -130 {lab=GND}
N 510 -130 610 -130 {lab=GND}
C {code_shown.sym} 1240 -10 0 0 {name=s1 only_toplevel=false value="
.control
tran 1u 2m
plot v(vin) v(vout)
.endc
"}
C {code_shown.sym} 60 -750 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {symbols/nfet_03v3.sym} 380 -230 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 690 -170 0 0 {name=M2
L=4u
W=7u
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
C {symbols/nfet_03v3.sym} 630 -330 0 1 {name=M3
L=4u
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
C {symbols/pfet_03v3.sym} 520 -390 0 1 {name=M4
L=5u
W=1u
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
C {symbols/pfet_03v3.sym} 520 -450 0 1 {name=M5
L=5u
W=1u
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
C {symbols/pfet_03v3.sym} 520 -510 0 1 {name=M6
L=5u
W=1u
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
C {symbols/pfet_03v3.sym} 520 -580 0 1 {name=M7
L=5u
W=1u
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
C {symbols/cap_mim_2f0fF.sym} 930 -170 0 0 {name=C2
W=10u
L=10u
model=cap_mim_2f0fF
spiceprefix=X
m=100}
C {iopin.sym} 500 -620 2 0 {name=p1 lab=VDD}
C {iopin.sym} 610 -130 1 0 {name=p3 lab=GND}
C {ipin.sym} 360 -230 0 0 {name=p2 lab=Vin}
C {opin.sym} 930 -200 3 0 {name=p4 lab=Vout}
