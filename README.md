# BCD Adder using Verilog

## Overview

This project implements a **BCD (Binary-Coded Decimal) Adder** using Verilog HDL.

A BCD adder adds two BCD digits and an optional carry input. If the binary sum is greater than 9 or generates a carry, the circuit adds **6 (0110)** to produce a valid BCD result.

---

## Features

- Adds two 4-bit BCD numbers
- Supports carry input (`Cin`)
- Automatically performs BCD correction
- Generates BCD sum and carry output

---

## Inputs and Outputs

### Inputs

- `A` : 4-bit BCD input
- `B` : 4-bit BCD input
- `Cin` : Carry input

### Outputs

- `Sum` : 4-bit BCD sum
- `Cout` : Carry output

---

## Files

- `bcd_adder.v` – Verilog design
- `bcd_adder_tb.v` – Testbench
- `README.md` – Documentation
- `simulation_result.png` – Simulation waveform

---

## Software Used

- Icarus Verilog
- ModelSim
- Xilinx Vivado
- GTKWave (optional)

---

## How to Run

### Compile

```bash
iverilog -o bcd bcd_adder.v bcd_adder_tb.v
```

### Run

```bash
vvp bcd
```

### Waveform

```bash
gtkwave dump.vcd
```

---

## Sample Test Cases

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
|2|3|0|5|0|
|4|5|0|9|0|
|5|7|0|2|1|
|8|9|0|7|1|
|9|9|1|9|1|

---

## Applications

- Digital calculators
- Digital clocks
- Embedded systems
- Seven-segment display interfaces
- Decimal arithmetic circuits

---

## Author

Your Name