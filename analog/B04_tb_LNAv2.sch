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
N 270 -990 270 -870 {lab=Vin}
N 200 -1070 460 -1070 {lab=#net1}
N 460 -1070 460 -1060 {lab=#net1}
N 200 -810 270 -810 {lab=0}
N 270 -810 460 -810 {lab=0}
N 510 -830 510 -590 {lab=#net2}
N 440 -590 510 -590 {lab=#net2}
N 440 -590 440 -580 {lab=#net2}
N 240 -620 290 -620 {lab=#net1}
N 240 -910 240 -620 {lab=#net1}
N 200 -910 240 -910 {lab=#net1}
N 140 -500 290 -500 {lab=0}
N 140 -810 140 -500 {lab=0}
N 420 -570 440 -570 {lab=#net2}
N 440 -580 440 -570 {lab=#net2}
N 420 -530 420 -500 {lab=0}
N 290 -500 420 -500 {lab=0}
N 290 -620 420 -620 {lab=#net1}
N 420 -620 420 -590 {lab=#net1}
N 690 -940 690 -810 {lab=0}
N 460 -810 690 -810 {lab=0}
N 510 -920 510 -830 {lab=#net2}
N 370 -920 510 -920 {lab=#net2}
N 370 -980 370 -920 {lab=#net2}
N 370 -980 390 -980 {lab=#net2}
N 270 -960 390 -960 {lab=Vin}
N 140 -810 200 -810 {lab=0}
N 460 -1060 690 -1060 {lab=#net1}
N 690 -1060 690 -980 {lab=#net1}
N 510 -760 580 -760 {lab=#net2}
N 300 -740 580 -740 {lab=Vin}
N 300 -960 300 -740 {lab=Vin}
N 690 -810 690 -710 {lab=0}
N 690 -710 880 -710 {lab=0}
N 880 -720 880 -710 {lab=0}
N 880 -1060 880 -760 {lab=#net1}
N 690 -1060 880 -1060 {lab=#net1}
C {vsource.sym} 200 -840 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} 200 -810 0 0 {name=l1 lab=0}
C {code_shown.sym} 1000 -910 0 0 {name=s1 only_toplevel=false value="
.control
set color0=white
set color1=black
set xbrushwidth=2

echo =================================================
echo 1. DC OPERATING POINT ANALYSIS
echo =================================================
op
print v(vout)
print v(x2.net1)
print @m.x2.xm1.m0[gm]
print @m.x2.xm1.m0[gds]
print @m.x2.xm2.m0[gm]
print @m.x2.xm2.m0[gds]
print @m.x2.xm3.m0[gds]
print @m.x2.xm4.m0[gds]

echo Arus PMOS LNA (M1):
print @m.x2.xm1.m0[id]
echo Arus Penguat Utama NMOS LNA (M2):
print @m.x2.xm2.m0[id]

echo =================================================
echo 2. AC ANALYSIS
echo =================================================
ac dec 50 1 100meg

meas ac peak_gain MAX vdb(vout)
let minus3db = peak_gain - 3
meas ac f_low WHEN vdb(vout)=minus3db RISE=1
meas ac f_high WHEN vdb(vout)=minus3db FALL=1

plot vdb(vout) ylabel 'Gain (dB)' xlabel 'Frequency (Hz)' title 'LNA AC Response'
plot cph(vout)*180/pi ylabel 'Phase (Deg)' xlabel 'Frequency (Hz)' title 'LNA Phase Response'

echo =================================================
echo 3. TRANSIENT ANALYSIS
echo =================================================
tran 10u 5m
plot v(vout) v(Vin) ylabel 'Voltage (V)' xlabel 'Time (s)' title 'Transient Response (1mVp 1kHz)'

echo =================================================
echo 4. NOISE ANALYSIS
echo =================================================
noise v(vout) Vin dec 20 1k 8k
setplot noise1
print onoise_total inoise_total
plot inoise_spectrum ylabel 'V/sqrt(Hz)' xlabel 'Frequency (Hz)' title 'Input Referred Noise'
plot onoise_spectrum ylabel 'V/sqrt(Hz)' xlabel 'Frequency (Hz)' title 'Output Referred Noise'
.endc
"}
C {lab_pin.sym} 750 -960 1 0 {name=p1 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 270 -990 1 0 {name=p2 sig_type=std_logic lab=Vin}
C {vsource.sym} 270 -840 0 0 {name=Vin value="DC 1.65 AC 1 SIN(1.65 10m 1k 0 0)" savecurrent=false}
C {code_shown.sym} -30 -1210 0 0 {name=include2 only_toplevel=false value=".include /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ff
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_ff
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib /foss/pdks/ciel/gf180mcu/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_ff"}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_BMR.sym} 270 -560 0 0 {name=x1}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNAv2.sym} 540 -960 0 0 {name=x2}
C {AURA-Event-Driven-Mixed-Signal-ASIC-for-Acoustic-Pattern-Detection/analog/B04_LNAv2.sym} 730 -740 0 0 {name=x3}
C {lab_pin.sym} 880 -740 2 0 {name=p3 sig_type=std_logic lab=Vout_pex}
