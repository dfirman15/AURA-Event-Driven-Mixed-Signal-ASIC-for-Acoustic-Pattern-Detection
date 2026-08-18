* NGSPICE file created from B04_comparator.ext - technology: gf180mcuD

.subckt nfet_03v3_QTST4M a_n56_n192# a_n282_n286# a_56_n100# a_n144_n100#
X0 a_56_n100# a_n56_n192# a_n144_n100# a_n282_n286# nfet_03v3 ad=0.44p pd=2.88u as=0.44p ps=2.88u w=1u l=0.56u
.ends

.subckt nfet_03v3_6RKKQV a_n56_n192# a_n282_n286# a_56_n100# a_n144_n100#
X0 a_56_n100# a_n56_n192# a_n144_n100# a_n282_n286# nfet_03v3 ad=0.44p pd=2.88u as=0.44p ps=2.88u w=1u l=0.56u
.ends

.subckt pfet_03v3_6PMKVS a_28_n150# a_n116_n136# w_n278_n360# a_n36_n242#
X0 a_28_n150# a_n36_n242# a_n116_n136# w_n278_n360# pfet_03v3 ad=0.6509p pd=3.88u as=0.6509p ps=3.88u w=1.5u l=0.28u
.ends

.subckt nfet_03v3_FQS73H a_n56_n192# a_n282_n286# a_56_n100# a_n144_n100#
X0 a_56_n100# a_n56_n192# a_n144_n100# a_n282_n286# nfet_03v3 ad=0.44p pd=2.88u as=0.44p ps=2.88u w=1u l=0.56u
.ends

.subckt pfet_03v3_JTXF9X a_28_n150# a_n116_n136# w_n278_n360# a_n36_n242#
X0 a_28_n150# a_n36_n242# a_n116_n136# w_n278_n360# pfet_03v3 ad=0.6509p pd=3.88u as=0.6509p ps=3.88u w=1.5u l=0.28u
.ends

.subckt pfet_03v3_2MEG6F a_n36_n442# a_28_n350# a_n116_n316# w_n278_n560#
X0 a_28_n350# a_n36_n442# a_n116_n316# w_n278_n560# pfet_03v3 ad=1.5179p pd=7.88u as=1.5179p ps=7.88u w=3.5u l=0.28u
.ends

.subckt pfet_03v3_6PXP3V a_n36_n442# a_28_n350# a_n116_n316# w_n278_n560#
X0 a_28_n350# a_n36_n442# a_n116_n316# w_n278_n560# pfet_03v3 ad=1.5179p pd=7.88u as=1.5179p ps=7.88u w=3.5u l=0.28u
.ends

.subckt nfet_03v3_DKWKKF a_n36_n292# a_n254_n386# a_n116_n181# a_28_n200#
X0 a_28_n200# a_n36_n292# a_n116_n181# a_n254_n386# nfet_03v3 ad=0.86765p pd=4.88u as=0.86765p ps=4.88u w=2u l=0.28u
.ends

.subckt nfet_03v3_SZY9ED a_n36_n292# a_n254_n386# a_n116_n181# a_28_n200#
X0 a_28_n200# a_n36_n292# a_n116_n181# a_n254_n386# nfet_03v3 ad=0.86765p pd=4.88u as=0.86765p ps=4.88u w=2u l=0.28u
.ends

.subckt B04_comparator VDD IB GND INN INP Q_BAR
XM1 IB GND m1_4140_n880# GND nfet_03v3_QTST4M
XM2 IB GND IB GND nfet_03v3_6RKKQV
XMq0 VDD m1_4410_860# VDD m1_4410_860# pfet_03v3_6PMKVS
XM3 m1_2640_580# GND m1_2640_580# GND nfet_03v3_FQS73H
XMq1 m1_2640_580# VDD VDD m1_4410_860# pfet_03v3_JTXF9X
XMq2 m1_3959_16# VDD VDD m1_3959_16# pfet_03v3_JTXF9X
XM6 m1_2640_580# GND Q_BAR GND nfet_03v3_FQS73H
XMq3 VDD Q_BAR VDD m1_3959_16# pfet_03v3_6PMKVS
XMq5 m1_4410_860# VDD m1_3959_16# VDD pfet_03v3_2MEG6F
XMq4 m1_3959_16# m1_4410_860# VDD VDD pfet_03v3_6PXP3V
XMqqq1 INP GND m1_4140_n880# m1_3959_16# nfet_03v3_DKWKKF
XMqqq INN GND m1_4410_860# m1_4140_n880# nfet_03v3_SZY9ED
.ends

