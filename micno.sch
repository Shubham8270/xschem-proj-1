v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -810 -530 -750 -530 {lab=vcin}
N -810 -530 -810 -450 {lab=vcin}
N -810 -390 -810 -310 {lab=GND}
N -690 -530 -620 -530 {lab=vn1}
N -560 -530 -520 -530 {lab=vn2}
N -410 -670 -380 -670 {lab=n3}
N -410 -670 -410 -530 {lab=n3}
N -410 -750 -390 -750 {lab=n3}
N -410 -750 -410 -670 {lab=n3}
N -320 -670 -290 -670 {lab=vout}
N -290 -670 -290 -580 {lab=vout}
N -330 -750 -290 -750 {lab=vout}
N -290 -750 -290 -670 {lab=vout}
N -390 -380 -390 -330 {lab=GND}
N -130 -450 -130 -380 {lab=GND}
N -130 -630 -130 -510 {lab=vout}
N -290 -630 -130 -630 {lab=vout}
N -290 -520 -280 -520 {lab=GND}
N -280 -520 -280 -350 {lab=GND}
N -390 -570 -390 -440 {lab=vcn}
N -390 -570 -330 -570 {lab=vcn}
N -460 -530 -330 -530 {lab=n3}
C {vsource.sym} -810 -420 0 1 {name=V1 value="0 ac 1" savecurrent=false}
C {res.sym} -720 -530 1 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -590 -530 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -810 -310 0 0 {name=l1 lab=GND}
C {res.sym} -490 -530 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -360 -750 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -350 -670 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} -290 -550 0 0 {name=E1 value=10000}
C {vsource.sym} -390 -410 0 1 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -390 -330 0 0 {name=l2 lab=GND}
C {capa.sym} -130 -480 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -130 -380 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -810 -510 0 0 {name=p1 sig_type=std_logic lab=vcin}
C {lab_wire.sym} -650 -530 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -530 -530 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -200 -630 0 0 {name=p4 sig_type=std_logic lab=vout}
C {lab_wire.sym} -410 -610 0 0 {name=p5 sig_type=std_logic lab=n3}
C {gnd.sym} -280 -350 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -390 -490 0 0 {name=p6 sig_type=std_logic lab=vcn}
C {simulator_commands_shown.sym} -800 -750 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	op
save all
write micno.raw
.endc
"}
