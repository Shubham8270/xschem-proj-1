# 🎤 MEMS Microphone Interface IC Design

This repository contains the design, simulation, and analysis of a MEMS microphone interface IC. The project includes:

- Modeling the MEMS microphone as a Thevenin equivalent source
- Designing an amplifier using an op-amp
- Creating a high-pass filter
- Adding a buffer stage
- Running simulations to verify the design

All circuits are created in **Xschem**, and simulations are done using **Ngspice**.

---

## 🔧 Thevenin Equivalent Model of MEMS Microphone

### Microphone Specs:
- Sensitivity: **-44 dBV/Pa**
- 94 dB SPL @ 1 kHz = **1 Pa**
- Output resistance (**Rth**) = **380 Ω**

### Calculation for Normal Voice (~60 dB SPL):

\[
\text{SPL to Pressure: } 10^{\frac{60 - 94}{20}} = 19.95 \times 10^{-3} \, \text{Pa}
\]
\[
\text{Vout (peak)} = 2 \times 19.95 \times 10^{-3} \times 10^{\frac{-44}{20}} = \mathbf{0.178 \, mV_{pk}}
\]

### Schematic:

![MEMS Thevenin Model](images/mems_thevenin_model.png)

---

## 🎛️ Op-Amp Amplifier Stage

Using the SparkFun breakout board design:

- Rin = **5kΩ**
- Rfb = **300kΩ**
- Gain = **60**

\[
\text{Vout} = 60 \times 0.178 \, \text{mV} = \mathbf{10.68 \, mV_{pk}}
\]

### Schematic:

![Opamp Amplifier](images/opamp_amplifier.png)

---

## 🎚️ High-Pass Filter Design

To eliminate low-frequency noise and DC:

- R = **5kΩ**
- C = **4.7 µF**

\[
f_{cutoff} = \frac{1}{2\pi RC} = \frac{1}{2\pi \cdot 5k \cdot 4.7\mu} ≈ \mathbf{6.77 \, Hz}
\]

### Schematic:

![High Pass Filter](images/high_pass_filter.png)

---

## 🔁 Buffer Op-Amp Stage

Used to isolate load and maintain signal integrity. The buffer has a unity gain and is placed after the filter stage.

### Schematic:

![Buffer Stage](images/buffer_stage.png)

---

## 📈 Simulation Results

Simulation done in **Ngspice** using `.ac` and `.tran` analysis to verify:

- Amplification gain
- Filter behavior (cutoff around 6.77 Hz)
- Signal flow across buffer

### Example Output:

![Simulation Waveforms](images/simulation_waveforms.png)

---

## 🧪 Tools Used

- 🖥️ **Xschem** – Circuit Design
- 🔁 **Ngspice** – Simulation
- 📐 Manual Calculation – For theoretical validation

---

## ✅ Summary

This project demonstrates a working analog front-end for a MEMS microphone:

- Accurate modeling of microphone using Thevenin equivalent
- Proper signal amplification using op-amp
- Effective filtering of unwanted frequencies
- Buffer stage to prevent loading issues
- All stages verified through simulation

---


