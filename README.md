# BCD Adder using Verilog

## Overview

This project implements a BCD Adder using Verilog HDL.

A BCD Adder adds two 4-bit Binary Coded Decimal digits. When the binary result is greater than 9, a correction of 0110 is added to produce a valid BCD result.

## Inputs

- `A` – First 4-bit BCD digit
- `B` – Second 4-bit BCD digit

## Outputs

- `Sum` – 4-bit BCD sum
- `Carry` – Carry generated when the result is greater than 9

## Working

1. Add the two BCD inputs.
2. Check whether the result is greater than 9.
3. If the result is greater than 9, add 0110.
4. Generate the final BCD sum and carry.

## BCD Correction

If:

`A + B <= 9`

No correction is required.

If:

`A + B > 9`

Add:

`0110`

## Example

### Example 1

3 + 4 = 7

```text
0011 + 0100 = 0111