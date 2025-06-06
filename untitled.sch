v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -40 -170 -10 {lab=GND}
N -170 -100 -110 -100 {lab=vmux}
N -50 -100 -10 -100 {lab=n1}
N 50 -100 120 -100 {lab=n2}
N 180 -100 250 -100 {lab=vin}
N 290 -90 290 -30 {lab=GND}
N 210 -300 210 -220 {lab=vin}
N 210 -220 210 -100 {lab=vin}
N 290 -300 290 -150 {lab=vout}
N 270 -300 290 -300 {lab=vout}
N 270 -230 290 -230 {lab=vout}
N 200 -140 250 -140 {lab=vcm}
N 200 -140 200 -10 {lab=vcm}
N 190 50 200 50 {lab=GND}
N 190 50 190 100 {lab=GND}
N 430 -200 430 -130 {lab=vout}
N 290 -200 430 -200 {lab=vout}
N 430 -70 430 30 {lab=GND}
C {vsource.sym} -170 -70 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {res.sym} -80 -100 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 20 -100 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -170 -10 0 0 {name=l1 lab=GND}
C {res.sym} 150 -100 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 290 -120 0 0 {name=E1 value=1000}
C {gnd.sym} 290 -30 0 0 {name=l2 lab=GND}
C {capa.sym} 240 -300 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 240 -230 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 200 20 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 190 100 0 0 {name=l3 lab=GND}
C {capa.sym} 430 -100 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 430 30 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -130 -100 0 0 {name=p1 sig_type=std_logic lab=vmux}
C {lab_wire.sym} -20 -100 0 0 {name=p2 sig_type=std_logic lab=n1}
C {lab_wire.sym} 100 -100 0 0 {name=p3 sig_type=std_logic lab=n2}
C {lab_wire.sym} 380 -200 0 0 {name=p4 sig_type=std_logic lab=vout}
C {lab_wire.sym} 210 -160 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} 200 -40 0 0 {name=p6 sig_type=std_logic lab=vcm}
