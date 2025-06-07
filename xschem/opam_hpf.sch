v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -100 60 -100 {lab=#net1}
N 120 -100 160 -100 {lab=#net2}
N -20 -40 160 -40 {lab=#net3}
N 160 -100 260 -100 {lab=#net2}
N 260 -100 260 -90 {lab=#net2}
N 160 -40 260 -40 {lab=#net3}
N 260 -50 260 -40 {lab=#net3}
N 300 -100 380 -100 {lab=vop}
N 300 -40 380 -40 {lab=vom}
N -140 -50 -60 -50 {lab=vinp}
N -140 -90 -60 -90 {lab=vinvp}
C {vcvs.sym} -20 -70 0 0 {name=E1 value=1000}
C {vcvs.sym} 300 -70 0 0 {name=E2 value=1}
C {capa.sym} 160 -70 0 0 {name=C1
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {res.sym} 90 -100 1 0 {name=R1
value=15.9k
footprint=1206
device=resistor
m=1}
C {iopin.sym} -140 -50 2 0 {name=p1 lab=vinp}
C {iopin.sym} -140 -90 2 0 {name=p2 lab=vinvp}
C {iopin.sym} 380 -100 0 0 {name=p3 lab=vop}
C {iopin.sym} 380 -40 0 0 {name=p4 lab=vom}
