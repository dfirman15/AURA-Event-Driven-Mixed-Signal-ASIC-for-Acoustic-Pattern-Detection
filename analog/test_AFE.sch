v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -450 -120 -20 -120 {lab=#net1}
N -450 80 -50 80 {lab=0}
N -50 80 -20 80 {lab=0}
N -20 -20 -20 80 {lab=0}
N -20 -120 330 -120 {lab=#net1}
N 120 -90 180 -90 {lab=Vbpf}
N 120 -90 120 -70 {lab=Vbpf}
N 80 -70 120 -70 {lab=Vbpf}
N -210 -120 -210 120 {lab=#net1}
N -240 80 -240 240 {lab=0}
N -240 240 -210 240 {lab=0}
N -60 200 130 200 {lab=#net2}
N 130 -50 130 200 {lab=#net2}
N 130 -50 180 -50 {lab=#net2}
N -20 80 330 80 {lab=0}
N 330 -20 330 80 {lab=0}
N 880 -40 930 -40 {lab=#net3}
N 480 -80 480 -70 {lab=Venv}
N 330 80 540 80 {lab=0}
N 540 0 540 80 {lab=0}
N 540 80 870 80 {lab=0}
N 870 80 880 -20 {lab=0}
N 880 -120 880 -80 {lab=#net1}
N 330 -120 880 -120 {lab=#net1}
N 880 -60 920 -60 {lab=Vout}
N 540 -80 580 -80 {lab=#net4}
N 540 -80 540 -60 {lab=#net4}
N 560 -60 580 -60 {lab=Venv}
N 560 -90 560 -60 {lab=Venv}
N 510 -90 560 -90 {lab=Venv}
N 510 -90 510 -80 {lab=Venv}
N 480 -80 510 -80 {lab=Venv}
N -170 -70 -120 -70 {lab=Vlna}
N -170 -70 -170 -20 {lab=Vlna}
N -200 -20 -170 -20 {lab=Vlna}
N -750 80 -450 80 {lab=0}
N -890 80 -750 80 {lab=0}
N -890 50 -890 80 {lab=0}
N -890 -120 -450 -120 {lab=#net1}
N -890 -120 -890 -10 {lab=#net1}
N -810 -50 -480 -50 {lab=#net5}
N -810 -50 -810 -10 {lab=#net5}
N -810 50 -810 80 {lab=0}
N -480 -100 -480 -50 {lab=#net5}
N -480 -100 -350 -100 {lab=#net5}
N -350 -100 -350 -90 {lab=#net5}
N -750 10 -480 10 {lab=#net6}
N -750 10 -750 20 {lab=#net6}
N -60 200 -60 260 {lab=#net2}
N -360 260 -60 260 {lab=#net2}
N -360 110 -360 260 {lab=#net2}
N -60 160 -40 160 {lab=#net7}
N -40 160 -40 280 {lab=#net7}
N -380 280 -40 280 {lab=#net7}
N -380 110 -380 280 {lab=#net7}
N -40 210 680 210 {lab=#net7}
N 720 240 950 240 {lab=#net3}
N 950 -40 950 240 {lab=#net3}
N 930 -40 950 -40 {lab=#net3}
N 720 -120 720 180 {lab=#net1}
N 720 180 720 210 {lab=#net1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BPF_4_order.sym} -20 -60 0 0 {name=x1}
C {vsource.sym} -890 20 0 0 {name=V1 value=3.3 savecurrent=false}
C {bsource.sym} -750 50 0 0 {name=B1 VAR=V FUNC="1.65 + 5m * (
+ time < 2m  ? sin(2*3.14159*1000*time)  :
+ time < 6m  ? sin(2*3.14159*3000*time)  :
+ time < 10m  ? sin(2*3.14159*5000*time)  :
+ time < 14m  ? sin(2*3.14159*7000*time)  :
+ sin(2*3.14159*9000*time) )" m=1}
C {gnd.sym} -50 80 0 0 {name=l1 lab=0}
C {lab_pin.sym} 120 -90 1 0 {name=p1 sig_type=std_logic lab=Vbpf}
C {code_shown.sym} -520 -310 0 0 {name=include1 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_typical"}
C {code_shown.sym} 650 510 0 0 {name=s1 only_toplevel=false value="
.control
tran 1u 20m
plot v(vout) v(venv) v(vbpf) v(vlna)
.endc
"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_envelope_detector.sym} 330 -70 0 0 {name=x2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_beta_multiplier_reference.sym} -210 180 0 0 {name=x3 length=410u}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_comparator.sym} 730 -50 0 0 {name=x4}
C {vsource.sym} 540 -30 0 0 {name=V2 value=1.0 savecurrent=false}
C {lab_pin.sym} 520 -90 1 0 {name=p2 sig_type=std_logic lab=Venv}
C {lab_pin.sym} 920 -60 1 0 {name=p3 sig_type=std_logic lab=Vout}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNA.sym} -370 -20 0 0 {name=x5}
C {lab_pin.sym} -160 -70 1 0 {name=p4 sig_type=std_logic lab=Vlna}
C {vsource.sym} -810 20 0 0 {name=V3 value=1.65 savecurrent=false}
C {symbols/pfet_03v3.sym} 700 210 0 0 {name=M1
L=4u
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
