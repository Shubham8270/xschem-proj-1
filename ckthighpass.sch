v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -130 -90 -130 {lab=vin}
N -130 -130 -130 -40 {lab=vin}
N -30 -130 50 -130 {lab=vn1}
N 110 -130 190 -130 {lab=virt}
N 160 -80 190 -80 {lab=vcm}
N 160 -80 160 40 {lab=vcm}
N 160 -190 290 -190 {lab=virt}
N 160 -190 160 -130 {lab=virt}
N 300 -110 460 -110 {lab=vout}
N 350 -190 410 -190 {lab=vout}
N 410 -190 410 -110 {lab=vout}
N 160 100 160 130 {lab=GND}
N 250 -60 250 130 {lab=GND}
N 160 130 250 130 {lab=GND}
N -130 20 -130 160 {lab=GND}
N -130 130 160 130 {lab=GND}
C {opmod.sym} 430 -10 0 0 {name=x1}
C {capa.sym} -60 -130 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 80 -130 1 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -130 -10 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} 160 70 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -130 160 0 0 {name=l1 lab=GND}
C {res.sym} 320 -190 1 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -130 -80 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} 10 -130 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 200 -190 0 0 {name=p3 sig_type=std_logic lab=virt}
C {lab_wire.sym} 450 -110 0 0 {name=p4 sig_type=std_logic lab=vout}
C {lab_wire.sym} 160 -10 0 0 {name=p5 sig_type=std_logic lab=vcm}
C {simulator_commands_shown.sym} -230 -360 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	op
save all
ac dec 100 0.1 10e6
plot vdb(vout)

write ckthighpass.raw
.endc
"}
