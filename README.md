# Mini Automotive ECU - Portfolio Project

## Description
A mini Electronic Control Unit (ECU) for automotive applications.
Controls a fan and alarm based on temperature input.

## Inputs / Outputs
- `temp` : 8-bit temperature input
- `fan`  : fan output (ON/OFF)
- `alarm`: alarm output (ON/OFF)

## Logic
| Temperature | Fan | Alarm |
|-------------|-----|-------|
| < 95        | 0   | 0     |
| 95–109      | 1   | 0     |
| ≥ 110       | 1   | 1     |

## Tools
- VHDL
- Xilinx ISE / Vivado / ModelSim

## Waveform
See `Screenshots/Waveform.png` for simulation mock-up.
