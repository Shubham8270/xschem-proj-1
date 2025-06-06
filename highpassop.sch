v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -60 -60 -60 {lab=#net1}
N -130 -0 40 -0 {lab=GND}
N -0 -60 40 -60 {lab=#net2}
N 120 -60 120 -50 {lab=#net2}
N 40 -60 120 -60 {lab=#net2}
N 120 -10 120 -0 {lab=GND}
N 40 -0 120 -0 {lab=GND}
N 160 -80 160 -60 {lab=vop}
N 160 -80 200 -80 {lab=vop}
N 160 0 160 30 {lab=vom}
N 160 30 210 30 {lab=vom}
N -220 -50 -170 -50 {lab=vinp}
N -210 -10 -170 -10 {lab=vinvp}
N -220 -10 -210 -10 {lab=vinvp}
C {vcvs.sym} -130 -30 0 0 {name=E1 value=1000}
C {vcvs.sym} 160 -30 0 0 {name=E2 value=1}
C {res.sym} -30 -60 1 0 {name=R1
value=15.9k
footprint=1206
device=resistor
m=1}
C {capa.sym} 40 -30 0 0 {name=C1
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -220 -50 2 0 {name=p1 lab=vinp}
C {iopin.sym} -220 -10 2 0 {name=p2 lab=vinvp}
C {iopin.sym} 200 -80 0 0 {name=p3 lab=vop}
C {iopin.sym} 210 30 0 0 {name=p4 lab=vom}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
