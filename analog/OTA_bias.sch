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
N 110 -370 170 -370 {lab=GND}
N 110 -370 110 -110 {lab=GND}
N 520 -370 520 -330 {lab=#net2}
N 520 -270 520 -210 {lab=Vbias0}
N 520 -150 610 -150 {lab=Vbias3}
N 610 -300 610 -150 {lab=Vbias3}
N 520 -240 580 -240 {lab=Vbias0}
N 580 -400 580 -240 {lab=Vbias0}
N 410 -180 480 -180 {lab=VDD}
N 410 -430 410 -180 {lab=VDD}
N 560 -300 610 -300 {lab=Vbias3}
N 560 -400 580 -400 {lab=Vbias0}
N 250 -250 290 -250 {lab=Vbias2}
N 250 -140 260 -140 {lab=Vbias1}
N 210 -460 410 -460 {lab=VDD}
N 410 -460 410 -430 {lab=VDD}
N 200 -110 200 -90 {lab=GND}
N 10 -300 40 -300 {lab=#net3}
N 40 -430 40 -300 {lab=#net3}
N 40 -430 170 -430 {lab=#net3}
N 200 -110 210 -110 {lab=GND}
N 110 -110 110 -90 {lab=GND}
N 110 -90 200 -90 {lab=GND}
N 10 -260 40 -260 {lab=#net4}
N 40 -260 40 -40 {lab=#net4}
N 40 -40 420 -40 {lab=#net4}
N 420 -120 420 -40 {lab=#net4}
N 420 -120 480 -120 {lab=#net4}
N 200 -90 520 -90 {lab=GND}
N 520 -120 520 -90 {lab=GND}
N 270 -90 270 -10 {lab=GND}
N -140 -10 270 -10 {lab=GND}
N -140 -220 -140 -10 {lab=GND}
N -140 -460 -140 -340 {lab=VDD}
N -140 -460 210 -460 {lab=VDD}
N 520 -460 520 -430 {lab=VDD}
N 410 -460 520 -460 {lab=VDD}
N 210 -140 210 -110 {lab=GND}
N 520 -180 620 -180 {lab=GND}
N 620 -180 620 -120 {lab=GND}
N 520 -120 620 -120 {lab=GND}
N 110 -250 210 -250 {lab=GND}
N 210 -370 310 -370 {lab=VDD}
N 310 -460 310 -370 {lab=VDD}
N 210 -460 210 -430 {lab=VDD}
N 520 -430 520 -400 {lab=VDD}
N 410 -300 520 -300 {lab=VDD}
C {symbols/pfet_03v3.sym} 190 -370 0 0 {name=M1
L=4u
W=5u
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
L=4u
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
C {symbols/nfet_03v3.sym} 230 -140 0 1 {name=M5
L=4u
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
C {symbols/pfet_03v3.sym} 540 -300 2 0 {name=M9
L=4u
W=5u
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
L=4u
W=5u
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
C {symbols/nfet_03v3.sym} 500 -180 2 1 {name=M6
L=4u
W=10u
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
C {iopin.sym} 310 -460 3 0 {name=p7 lab=VDD}
C {opin.sym} 290 -310 0 0 {name=p12 lab=Vbias2}
C {opin.sym} 260 -190 0 0 {name=p17 lab=Vbias1}
C {opin.sym} 580 -350 0 0 {name=p14 lab=Vbias0}
C {opin.sym} 610 -230 0 0 {name=p15 lab=Vbias3}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/beta_multiplier_reference.sym} -140 -280 0 0 {name=x1 cur_factor=\{cur_factor\}}
C {symbols/pfet_03v3.sym} 190 -430 0 0 {name=M2
L=4u
W=10u
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
C {symbols/nfet_03v3.sym} 500 -120 2 1 {name=M3
L=4u
W=10u
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
C {iopin.sym} 220 -10 1 0 {name=p1 lab=GND}
