# Assignment 1

## Circuit Diagram
![High-Pass Filter Circuit](./imagesas1/Fig-d5-1-highPass.png)

---

## Question 1: Determine the type of circuit

**Answer:**  
The given circuit is an **active high-pass filter** implemented using an **inverting op-amp configuration**. The input signal passes through a capacitor followed by a resistor, which together form the high-pass filtering stage. The op-amp amplifies the filtered signal with a gain determined by the ratio of the feedback and input resistors.

---

## Question 2: Write the s-domain transfer function for the circuit

**Answer:**  
Given component values:
- $C_i = 4.7 \, \mu\text{F}$
- $R_i = 5 \, \text{k}\Omega$
- $R_f = 5 \, \text{k}\Omega$

The transfer function $H(s)$ for an inverting high-pass filter is:

$$
H(s) = -\frac{R_f}{R_i} \cdot \frac{sRC}{1 + sRC}
$$

Substituting the given values:

$$
H(s) = -1 \cdot \frac{s \cdot 5000 \cdot 4.7 \times 10^{-6}}{1 + s \cdot 5000 \cdot 4.7 \times 10^{-6}}
$$

$$
H(s) = -\frac{0.0235s}{1 + 0.0235s}
$$

---

## Question 3: Find the frequency of the -3 dB point (high-pass corner frequency)

**Answer:**  
The -3 dB corner frequency $f_c$ is given by:

$$
f_c = \frac{1}{2\pi RC}
$$

Substitute values:

$$
f_c = \frac{1}{2\pi \cdot 5000 \cdot 4.7 \times 10^{-6}} \approx 6.77 \, \text{Hz}
$$

So, the cutoff frequency of the filter is **approximately 6.77 Hz**.

---

##This is the schematic created in xschem with the required components.

![Schematic](<./imagesas1/Picture5.png>)

---

##The AC simulation output voltage magnitude (Vdb_out) vs frequency plot is shown below.

![AC Output Voltage (dB)](<ADD_YOUR_AC_PLOT_IMAGE_HERE>)

---

##The corner frequency (-3 dB frequency) determined from the plot is:

$$
f_c = <ADD_CORNER_FREQUENCY_VALUE> \, \text{Hz}
$$

![Corner Frequency Annotation](<ADD_YOUR_CORNER_FREQUENCY_IMAGE_HERE>)

---



