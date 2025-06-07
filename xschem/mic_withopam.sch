v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 610 140 610 {lab=vmux}
N 100 610 100 670 {lab=vmux}
N 100 730 100 810 {lab=GND}
N 200 610 290 610 {lab=n1}
N 350 610 450 610 {lab=n2}
N 680 810 680 880 {lab=GND}
N 600 390 640 390 {lab=vin}
N 600 390 600 610 {lab=vin}
N 700 390 720 390 {lab=vout}
N 600 300 640 300 {lab=vin}
N 600 300 600 390 {lab=vin}
N 700 300 720 300 {lab=vout}
N 720 300 720 390 {lab=vout}
N 980 720 980 810 {lab=GND}
N 980 500 980 660 {lab=vout}
N 510 610 690 610 {lab=vin}
N 750 690 750 790 {lab=GND}
N 720 390 800 390 {lab=vout}
N 800 390 800 640 {lab=vout}
N 800 500 980 500 {lab=vout}
N 680 670 680 750 {lab=vcmo}
N 680 670 690 670 {lab=vcmo}
C {res.sym} 170 610 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 320 610 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 100 700 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {gnd.sym} 100 810 0 0 {name=l1 lab=GND}
C {res.sym} 480 610 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 680 780 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} 670 390 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 670 300 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 980 690 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 680 880 0 0 {name=l2 lab=GND}
C {gnd.sym} 980 810 0 0 {name=l3 lab=GND}
C {gnd.sym} 750 790 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 100 640 0 0 {name=p1 sig_type=std_logic lab=vmux}
C {lab_wire.sym} 240 610 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} 400 610 0 0 {name=p3 sig_type=std_logic lab=n2}
C {lab_wire.sym} 600 490 0 0 {name=p4 sig_type=std_logic lab=vin}
C {lab_wire.sym} 930 500 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} 150 90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
	op
	save all
	write mic_withopam.raw
.endc
"}
C {/home/shubham/analoginternship/xschem-proj-1/xschem/opam_mic1.sym} 690 760 0 0 {name=x1}
C {lab_wire.sym} 680 710 0 0 {name=p5 sig_type=std_logic lab=vcmo}
