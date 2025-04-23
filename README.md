# 8086MP_DAC 🎛️

A project that generates a **Sawtooth waveform** using the **Intel 8086 microprocessor**, an **8255 PPI interface**, and a **DAC0808**. The waveform is visualized on an oscilloscope within the **Proteus 8 (2020)** simulation environment.

---

## 🧠 Project Idea

The goal is to generate a **Sawtooth waveform** by incrementally outputting digital values from 0 to 255 through the 8255 PPI to a DAC0808. The DAC converts these digital values into an analog voltage, which is then displayed on the oscilloscope.

---

## 🛠️ Components Used

- Intel 8086 Microprocessor
- 8255 Programmable Peripheral Interface (PPI)
- DAC0808 Digital-to-Analog Converter
- Oscilloscope
- Power supplies: +5V and -15V
- Proteus 8 (2020) simulation environment

---

## 🔌 Wiring Overview

| Component         | Connection                             |
|-------------------|----------------------------------------|
| Port A (8255)     | Connected to DAC0808 digital inputs    |
| Vref+ (DAC0808)   | +5V                                    |
| Vref− (DAC0808)   | −15V                                   |
| DAC Output        | Connected to Oscilloscope Channel A    |
| Control Register  | Set to `80H` (Port A as output)        |

---

## How to use

Write your code in emu8086 and create a .com file.  
Right-click on 8086 in Proteus and choose the .com file that has been created from emu8086.  
---
