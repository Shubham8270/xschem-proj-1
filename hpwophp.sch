v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -280 -550 -280 -510 {lab=GND}
N -280 -740 -220 -740 {lab=vin}
N -280 -740 -280 -610 {lab=vin}
N -160 -740 -30 -740 {lab=n1}
N -280 -530 120 -530 {lab=GND}
N -280 -530 -280 -520 {lab=GND}
N 270 -680 270 -530 {lab=GND}
N 110 -530 270 -530 {lab=GND}
N 80 -860 210 -860 {lab=n2}
N 30 -770 30 -740 {lab=n2}
N 30 -770 210 -770 {lab=n2}
N 120 -710 210 -710 {lab=vcm}
N 120 -710 120 -590 {lab=vcm}
N 340 -730 570 -730 {lab=vop}
N 80 -860 80 -770 {lab=n2}
N 270 -860 420 -860 {lab=vop}
N 420 -860 420 -730 {lab=vop}
C {vsource.sym} -280 -580 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {res.sym} 0 -740 1 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -190 -740 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -280 -510 0 0 {name=l1 lab=GND}
C {vsource.sym} 120 -560 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} 240 -860 1 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {simulator_commands_shown.sym} -300 -940 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	op
save all
**ac dec 100 0.1 10e6
write hpwophp.raw
.endc
"}
C {lab_wire.sym} -280 -700 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -80 -740 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} 80 -810 0 0 {name=p3 sig_type=std_logic lab=n2}
C {lab_wire.sym} 120 -620 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 500 -730 0 0 {name=p5 sig_type=std_logic lab=vop
}
C {highpassop.sym} 350 -610 0 0 {name=x1}
