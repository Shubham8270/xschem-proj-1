v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -290 -40 -270 -40 {lab=vin}
N -290 -40 -290 70 {lab=vin}
N -210 -40 -150 -40 {lab=n1}
N -90 -40 -30 -40 {lab=n2}
N -290 130 -290 170 {lab=GND}
N -30 150 -30 230 {lab=GND}
N 80 -20 260 -20 {lab=vout}
N -50 -170 -20 -170 {lab=n2}
N -50 -170 -50 -40 {lab=n2}
N 40 -170 150 -170 {lab=vout}
N 150 -170 150 -20 {lab=vout}
N 30 30 30 80 {lab=GND}
N -30 10 -30 90 {lab=vcm}
C {capa.sym} -240 -40 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -120 -40 1 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 10 -170 1 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -290 100 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -30 120 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -290 170 0 0 {name=l1 lab=GND}
C {gnd.sym} -30 230 0 0 {name=l2 lab=GND}
C {gnd.sym} 30 80 0 0 {name=l3 lab=GND}
C {opmod.sym} 210 80 0 0 {name=x1}
C {lab_wire.sym} -290 10 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -170 -40 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} -70 -40 0 0 {name=p3 sig_type=std_logic lab=n2}
C {lab_wire.sym} -30 60 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 200 -20 0 0 {name=p5 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -520 -220 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	op
save all
**ac dec 100 0.1 10e6
**plot vdb(vout)

write untitled-2.raw
.endc
"}
