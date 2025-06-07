v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -340 -0 -300 -0 {lab=vmux}
N -340 -0 -340 60 {lab=vmux}
N -340 120 -340 200 {lab=GND}
N -240 -0 -150 -0 {lab=n1}
N -90 -0 10 -0 {lab=n2}
N 70 -0 240 -0 {lab=vin}
N 120 -40 240 -40 {lab=vcm}
N 120 -40 120 100 {lab=vcm}
N 120 160 120 230 {lab=GND}
N 160 -220 200 -220 {lab=vin}
N 160 -220 160 -0 {lab=vin}
N 260 -220 280 -220 {lab=vout}
N 280 -220 280 -50 {lab=vout}
N 160 -310 200 -310 {lab=vin}
N 160 -310 160 -220 {lab=vin}
N 260 -310 280 -310 {lab=vout}
N 280 -310 280 -220 {lab=vout}
N 540 110 540 200 {lab=GND}
N 280 10 280 130 {lab=GND}
N 540 -110 540 50 {lab=vout}
N 280 -110 540 -110 {lab=vout}
C {res.sym} -270 0 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -120 0 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -340 90 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vcvs.sym} 280 -20 0 0 {name=E1 value=1000}
C {gnd.sym} -340 200 0 0 {name=l1 lab=GND}
C {res.sym} 40 0 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 120 130 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} 230 -220 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 230 -310 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 540 80 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 120 230 0 0 {name=l2 lab=GND}
C {gnd.sym} 540 200 0 0 {name=l3 lab=GND}
C {gnd.sym} 280 130 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -340 30 0 0 {name=p1 sig_type=std_logic lab=vmux}
C {lab_wire.sym} -200 0 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} -40 0 0 0 {name=p3 sig_type=std_logic lab=n2}
C {lab_wire.sym} 160 -120 0 0 {name=p4 sig_type=std_logic lab=vin}
C {lab_wire.sym} 120 60 0 0 {name=p5 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 380 -110 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -290 -520 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	op
	save all
	write mic1.raw
.endc
"}
