v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -1070 200 -870 {lab=#net1}
N 690 -960 750 -960 {lab=Vout}
N 750 -960 750 -950 {lab=Vout}
N 200 -1070 460 -1070 {lab=#net1}
N 460 -1070 460 -1060 {lab=#net1}
N 200 -810 270 -810 {lab=0}
N 270 -810 460 -810 {lab=0}
N 510 -830 510 -590 {lab=VbiasP}
N 440 -590 510 -590 {lab=VbiasP}
N 440 -590 440 -580 {lab=VbiasP}
N 240 -620 290 -620 {lab=#net1}
N 240 -910 240 -620 {lab=#net1}
N 200 -910 240 -910 {lab=#net1}
N 140 -500 290 -500 {lab=0}
N 140 -810 140 -500 {lab=0}
N 420 -570 440 -570 {lab=VbiasP}
N 440 -580 440 -570 {lab=VbiasP}
N 420 -530 420 -500 {lab=0}
N 290 -500 420 -500 {lab=0}
N 290 -620 420 -620 {lab=#net1}
N 420 -620 420 -590 {lab=#net1}
N 690 -940 690 -810 {lab=0}
N 460 -810 690 -810 {lab=0}
N 510 -920 510 -830 {lab=VbiasP}
N 370 -920 510 -920 {lab=VbiasP}
N 140 -810 200 -810 {lab=0}
N 460 -1060 690 -1060 {lab=#net1}
N 690 -1060 690 -980 {lab=#net1}
N 270 -980 390 -980 {lab=Vin}
N 370 -960 370 -920 {lab=VbiasP}
N 420 -550 450 -550 {lab=VbiasN}
N 450 -940 450 -550 {lab=VbiasN}
N 390 -940 450 -940 {lab=VbiasN}
N 390 -960 390 -940 {lab=VbiasN}
N 270 -990 270 -930 {lab=Vin}
N 510 -840 530 -840 {lab=VbiasP}
N 530 -980 530 -860 {lab=Vin}
N 390 -980 530 -980 {lab=Vin}
N 830 -1060 830 -860 {lab=#net1}
N 690 -1060 830 -1060 {lab=#net1}
N 690 -820 830 -820 {lab=0}
C {vsource.sym} 200 -840 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -810 0 0 {name=l1 lab=0}
C {code_shown.sym} 1000 -910 0 0 {name=s1 only_toplevel=false value="
.control
set color0=white
set color1=black
set xbrushwidth=2

echo =================================================
echo TRANSIENT ANALYSIS: ENVELOPE DETECTOR
echo =================================================
* Simulasi dijalankan 20ms untuk melihat 2 bukit penuh dari modulasi 100Hz
tran 10u 20m

* Plot Vin dan Vout di satu layar untuk melihat efek "memeluk" puncak
plot v(Vin) v(vout) ylabel 'Voltage (V)' xlabel 'Time (s)' title 'Precision Envelope Detector Response'
plot v(VbiasP) v(VbiasN)
plot @m.x2.xm2.m0[id]

.endc
"}
C {lab_pin.sym} 750 -960 1 0 {name=p1 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 270 -990 1 0 {name=p2 sig_type=std_logic lab=Vin}
C {vsource.sym} 270 -840 0 0 {name=Vin value="SIN(0 200m 4900)" savecurrent=false}
C {code_shown.sym} -30 -1210 0 0 {name=include2 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ff
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_ff
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_ff"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BMR.sym} 270 -560 0 0 {name=x1}
C {lab_pin.sym} 480 -590 1 0 {name=p3 sig_type=std_logic lab=VbiasP}
C {lab_pin.sym} 450 -550 1 0 {name=p4 sig_type=std_logic lab=VbiasN}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_envelope.sym} 540 -960 0 0 {name=x2}
C {vsource.sym} 270 -900 0 0 {name=Vin1 value="SIN(1.65 200m 5100)" savecurrent=false}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_envelope.sym} 680 -840 0 0 {name=x3}
C {lab_pin.sym} 830 -840 2 0 {name=p5 sig_type=std_logic lab=Vout_pex}
