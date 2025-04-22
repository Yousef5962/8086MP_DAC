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
| Vref+ (DAC0808)   | +25V                                   |
| Vref− (DAC0808)   | −25V                                   |
| DAC Output        | Connected to Oscilloscope Channel A    |
| Control Register  | Set to `10000000B` (Port A as output)  |

---

## 🧾 Assembly Code (ASM)

```asm
PORTA EQU 00H
Config EQU 06H

ORG 100H
MOV DX, Config
MOV AL, 10000000B
OUT DX, AL

START:
  MOV AL, 00000000B
  MOV DX, PORTA
j1:
  OUT DX, AL
  INC AL
  CMP AL, 0FFH
  JNZ j1

JMP START
