---

# 8086Micro_Processor 🎛️💡🔘

A project that generates **custom waveforms** using the **Intel 8086 microprocessor**, the **8255 PPI interface**, and a **DAC0808**, with real-time control via **Switches** and visual feedback through **LEDs**. The waveform is visualized on an **oscilloscope** in the **Proteus 8.1 (2020)** simulation environment.

---

## 🧠 Project Overview

The system enables waveform generation by outputting digital values (e.g., 0–255) from the 8086 through the 8255 PPI to a DAC0808. The DAC converts these values into analog voltages to produce various waveforms (e.g., **Sawtooth**, **Ramp**, **Step**, etc.). Additional features include:

* **LED Display:** Port B of the 8255 is used to output digital values to a set of LEDs.
* **Switch Input:** Port C reads digital input from switches to allow user-controlled behavior or waveform selection.

---

## 🛠️ Components Used

* Intel 8086 Microprocessor
* 8255 Programmable Peripheral Interface (PPI)
* DAC0808 Digital-to-Analog Converter
* LEDs
* Switches
* Oscilloscope
* Power Supplies: +5V and -15V
* Proteus 8 (2020) simulation environment

---

## 🔌 Wiring Overview

| Component        | Connection                                                    |
| ---------------- | ------------------------------------------------------------- |
| Port A (8255)    | Connected to DAC0808 digital inputs                           |
| Port B (8255)    | Connected to LEDs                                             |
| Port C (8255)    | Connected to Switches                                         |
| Vref+ (DAC0808)  | +5V                                                           |
| Vref− (DAC0808)  | −15V                                                          |
| DAC Output       | Connected to Oscilloscope Channel A                           |
| Control Register | Set to `89H` (Ports A and B are outputs, C is input (as needed) |

---

## 📝 How to Use

1. Write your assembly code in **emu8086**, including the waveform logic, LED output, and switch input handling.
2. Compile the code to generate a `.com` file.
3. In **Proteus**, right-click on the 8086 and load the generated `.com` file.
4. Connect the PPI ports as described and observe the output waveform and LED behavior.
5. Use switches to test interactive features or select different waveform types if implemented.

---
