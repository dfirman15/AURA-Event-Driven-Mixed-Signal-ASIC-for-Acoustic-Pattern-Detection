v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 720 -550 790 -550 {lab=Vin}
N 720 -550 720 -180 {lab=Vin}
N 720 -180 790 -180 {lab=Vin}
N 720 -300 790 -300 {lab=Vin}
N 720 -450 790 -450 {lab=Vin}
N 830 -520 830 -480 {lab=#net1}
N 830 -630 830 -580 {lab=#net2}
N 830 -150 830 -120 {lab=GND}
N 830 -270 830 -210 {lab=#net3}
N 830 -300 940 -300 {lab=GND}
N 940 -300 940 -140 {lab=GND}
N 830 -140 940 -140 {lab=GND}
N 830 -180 940 -180 {lab=GND}
N 830 -450 940 -450 {lab=VDD}
N 940 -600 940 -450 {lab=VDD}
N 830 -550 940 -550 {lab=VDD}
N 830 -240 1110 -240 {lab=#net3}
N 830 -500 1110 -500 {lab=#net1}
N 1140 -460 1140 -280 {lab=Vout}
N 1140 -240 1140 -140 {lab=GND}
N 940 -140 1140 -140 {lab=GND}
N 1140 -600 1140 -500 {lab=VDD}
N 940 -600 1140 -600 {lab=VDD}
N 620 -380 720 -380 {lab=Vin}
N 1170 -240 1230 -240 {lab=VDD}
N 1230 -600 1230 -240 {lab=VDD}
N 1140 -600 1230 -600 {lab=VDD}
N 1170 -500 1220 -500 {lab=GND}
N 1220 -500 1220 -140 {lab=GND}
N 1140 -140 1220 -140 {lab=GND}
N 830 -420 830 -380 {lab=Vout}
N 830 -380 830 -330 {lab=Vout}
N 830 -380 1140 -380 {lab=Vout}
N 1140 -380 1260 -380 {lab=Vout}
N 830 -730 830 -690 {lab=VDD}
N 830 -690 830 -660 {lab=VDD}
N 830 -690 940 -690 {lab=VDD}
N 940 -690 940 -600 {lab=VDD}
N 830 -90 940 -90 {lab=GND}
N 940 -140 940 -90 {lab=GND}
N 830 -60 830 -40 {lab=GND}
N 480 -660 790 -660 {lab=GND}
N 480 -660 480 -60 {lab=GND}
N 480 -60 830 -60 {lab=GND}
N 830 -90 830 -60 {lab=GND}
N 500 -90 790 -90 {lab=VDD}
N 500 -710 500 -90 {lab=VDD}
N 500 -710 830 -710 {lab=VDD}
C {symbols/pfet_03v3.sym} 810 -550 0 0 {name=M1
L=25u
W=0.25u
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
C {symbols/pfet_03v3.sym} 810 -450 0 0 {name=M2
L=25u
W=0.25u
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
C {symbols/pfet_03v3.sym} 1140 -480 1 1 {name=M3
L=1u
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
C {symbols/nfet_03v3.sym} 810 -300 0 0 {name=M4
L=25u
W=0.25u
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
C {symbols/nfet_03v3.sym} 810 -180 0 0 {name=M5
L=25u
W=0.25u
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
C {symbols/nfet_03v3.sym} 1140 -260 3 1 {name=M6
L=1u
W=1u
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
C {iopin.sym} 830 -730 3 0 {name=p1 lab=VDD}
C {iopin.sym} 830 -40 3 1 {name=p2 lab=GND}
C {ipin.sym} 620 -380 0 0 {name=p3 lab=Vin}
C {opin.sym} 1260 -380 0 0 {name=p4 lab=Vout}
C {symbols/pfet_03v3.sym} 810 -660 0 0 {name=M7
L=25u
W=0.25u
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
C {symbols/nfet_03v3.sym} 810 -90 0 0 {name=M8
L=25u
W=0.25u
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
