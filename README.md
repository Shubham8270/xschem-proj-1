# 🎤 MEMS Microphone Interface IC Design

This repository contains the design, simulation, and analysis of a MEMS microphone interface IC. The project includes:

- Modeling the MEMS microphone as a Thevenin equivalent source
- Designing an amplifier using an op-amp
- Creating a high-pass filter
- Adding a buffer stage
- Running simulations to verify the design

All circuits are created in **Xschem**, and simulations are done using **Ngspice**.

---

## 🎙️ Thevenin Equivalent Model Calculations

**SPL to Pressure Conversion:**

$$
\text{Pressure (Pa)} = 10^{\frac{60 - 94}{20}} = 19.95 \times 10^{-3} \, \text{Pa}
$$

**Output Voltage (Peak):**

$$
V_{\text{out (peak)}} = 2 \times 19.95 \times 10^{-3} \times 10^{\frac{-44}{20}} = \mathbf{0.178 \, \text{mV}_{\text{pk}}}
$$

### Schematic:

![MEMS Thevenin Model](https://github.com/Shubham8270/xschem-proj-1/blob/main/Documentation%20and%20usage%20guide/Fig-d1-1-USBmic.png)

---

## 🎛️ Op-Amp Amplifier Stage

Using the SparkFun breakout board design:

- Rin = **5kΩ**
- Rfb = **300kΩ**
- Gain = **60**

**Amplified Output Voltage:**

$$
V_{\text{out}} = 60 \times 0.178 \, \text{mV} = \mathbf{10.68 \, \text{mV}_{\text{pk}}}
$$


### Schematic:

![Opamp Amplifier](https://github.com/Shubham8270/xschem-proj-1/blob/main/Schematic%20and%20layout%20files/images/Picture4.png?raw=true)

---

## 🎚️ High-Pass Filter Design

To eliminate low-frequency noise and DC:

- R = **5kΩ**
- C = **4.7 µF**

**High-Pass Filter Cutoff Frequency:**

$$
f_{\text{cutoff}} = \frac{1}{2\pi RC} = \frac{1}{2\pi \cdot 5k \cdot 4.7\mu} \approx \mathbf{6.77 \, \text{Hz}}
$$


### Schematic:

![High Pass Filter](https://github.com/Shubham8270/xschem-proj-1/blob/main/Schematic%20and%20layout%20files/images/Picture6.png?raw=true)

---

## 🔁 Buffer Op-Amp Stage

Used to isolate load and maintain signal integrity. The buffer has a unity gain and is placed after the filter stage.

### Schematic:

![Buffer Stage](https://github.com/Shubham8270/xschem-proj-1/blob/main/Schematic%20and%20layout%20files/images/Picture8.png?raw=true)

---

## 📈 Simulation Results

Simulation done in **Ngspice** using `.ac` and `.tran` analysis to verify:

- Amplification gain
- Filter behavior (cutoff around 6.77 Hz)
- Signal flow across buffer

### Example Output:

![Simulation Waveforms](https://github.com/Shubham8270/xschem-proj-1/blob/main/Simulation%20and%20testbench%20files/images2/Picture6.png?raw=true)

---

## 🧪 Tools Used

- 🖥️ **Xschem** – Circuit Design
- 🔁 **Ngspice** – Simulation
- 📐 Manual Calculation – For theoretical validation

---

## 📂 Detailed Project Resources

Below are direct links to all schematic diagrams, simulation testbenches, data, and output waveforms:

### 🧩 Schematic and Layout Files
- [📘 Schematic Description](https://github.com/Shubham8270/xschem-proj-1/blob/main/Schematic%20and%20layout%20files/Schemetic.md)

### 🧪 Simulation and Testbench
- [📄 Simulation Data and Calculations](https://github.com/Shubham8270/xschem-proj-1/blob/main/Simulation%20and%20testbench%20files/data.md)
- [📊 Plots and Analysis](https://github.com/Shubham8270/xschem-proj-1/blob/main/Simulation%20and%20testbench%20files/plots.md)
- [📈 Waveform Output](https://github.com/Shubham8270/xschem-proj-1/blob/main/Simulation%20and%20testbench%20files/wave%20output.md)

---


## ✅ Summary

This project demonstrates a working analog front-end for a MEMS microphone:

- Accurate modeling of microphone using Thevenin equivalent
- Proper signal amplification using op-amp
- Effective filtering of unwanted frequencies
- Buffer stage to prevent loading issues
- All stages verified through simulation

---


