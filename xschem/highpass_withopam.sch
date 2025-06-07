v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -380 -100 -380 100 {lab=vin}
N -380 -100 -340 -100 {lab=vin}
N -280 -100 -130 -100 {lab=vn1}
N -70 -100 140 -100 {lab=virt}
N 60 -40 140 -40 {lab=vcm}
N 60 -40 60 100 {lab=vcm}
N -380 160 -380 340 {lab=GND}
N 30 -240 150 -240 {lab=virt}
N 30 -240 30 -100 {lab=virt}
N 60 160 60 260 {lab=GND}
N -380 260 60 260 {lab=GND}
N 210 -240 420 -240 {lab=vout}
N 420 -240 420 -70 {lab=vout}
N 240 -70 500 -70 {lab=vout}
N 190 -20 190 260 {lab=GND}
N 60 260 190 260 {lab=GND}
C {vsource.sym} -380 130 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} -310 -100 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -100 -100 1 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 180 -240 1 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -380 340 0 0 {name=l1 lab=GND}
C {vsource.sym} 60 130 0 0 {name=V2 value=1.5 savecurrent=false}
C {lab_wire.sym} -380 -40 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} 60 40 0 0 {name=p2 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 470 -70 0 0 {name=p3 sig_type=std_logic lab=vout}
C {lab_wire.sym} 70 -240 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} -200 -100 0 0 {name=p5 sig_type=std_logic lab=vn1}
C {simulator_commands_shown.sym} -340 -440 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	op
	save all
	write highpass_withopam.raw
.endc
"}
C {/home/shubham/analoginternship/xschem-proj-1/xschem/opam_hpf.sym} 120 190 0 0 {name=x1}
