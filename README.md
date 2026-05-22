# 8-Bit ALU using Verilog HDL

An 8-bit Arithmetic Logic Unit (ALU) designed using Verilog HDL capable of performing arithmetic and logical operations commonly used in digital systems and processor architectures. The design was simulated and verified using Xilinx Vivado and targeted for implementation on the Basys 3 FPGA board.

---

## Project Overview

The ALU is one of the fundamental building blocks of modern processors.  
This project demonstrates the design and simulation of an 8-bit ALU using RTL-based Verilog design techniques.

The ALU performs multiple arithmetic and logical operations based on a 3-bit select input (`SEL`).

---

## Features

- 8-bit RTL Design
- Combinational Logic Implementation
- Arithmetic Operations
- Logical Operations
- Shift Operations
- FPGA-Compatible Design
- Vivado Simulation Verification

---

## Operations Supported

| SEL | Operation | Description |
|-----|------------|-------------|
| 000 | Addition | `A + B` |
| 001 | Subtraction | `A - B` |
| 010 | AND | `A & B` |
| 011 | OR | `A \| B` |
| 100 | XOR | `A ^ B` |
| 101 | NOT | `~A` |
| 110 | Left Shift | `A << 1` |
| 111 | Right Shift | `A >> 1` |

---

## Tools & Technologies

- Verilog HDL
- Xilinx Vivado
- Basys 3 FPGA Board
- RTL Design
- Digital Electronics

---

## FPGA Details

| Parameter | Value |
|-----------|-------|
| FPGA Board | Basys 3 |
| FPGA Device | XC7A35TCPG236-1 |
| Design Type | RTL / Combinational Logic |

---

## Project Structure

```txt
8bit-alu-verilog
│
├── .github
│   └── workflows
│       └── verilog-ci.yml
├── 8bit-alu-verilog
│   ├── .gitignore
│   ├── constraints
│   │   └── 8bit_alu.xdc
│   ├── screenshots
│   │   └── waveform_simulation.png
│   ├── src
│   │   └── 8bit_alu.v
│   └── tb
│       └── 8bit_alu_tb.v
├── .gitignore
├── README.md
```

---

## Simulation Results

The design was simulated successfully using Vivado Simulator.

### Test Inputs
```txt
A = 0F
B = 03
```

### Simulation Output

| SEL | Operation | Output (Y) |
|-----|------------|-------------|
| 000 | Addition | 12 |
| 001 | Subtraction | 0C |
| 010 | AND | 03 |
| 011 | OR | 0F |
| 100 | XOR | 0C |
| 101 | NOT | F0 |
| 110 | Left Shift | 1E |
| 111 | Right Shift | 07 |

---

## Simulation Waveform

![Waveform](/8bit-alu-verilog/screenshots/waveform_simulation.png)

---

## Automated CI Simulation

This project includes a GitHub Actions workflow that runs an automated Verilog simulation on every push and pull request.

The workflow uses `ubuntu-latest`, installs Icarus Verilog with `apt`, compiles the ALU design with the testbench, and runs the simulation with `vvp`. The check fails automatically if compilation fails or if the self-checking testbench reports an incorrect output.

To run the same simulation locally on Ubuntu or a similar Linux environment:

```sh
sudo apt-get update
sudo apt-get install -y iverilog
iverilog -g2012 -o alu_tb.out 8bit-alu-verilog/src/8bit_alu.v 8bit-alu-verilog/tb/8bit_alu_tb.v
vvp alu_tb.out
```

---

## Concepts Used

- RTL Design
- Verilog HDL
- Combinational Logic
- FPGA Design Flow
- Digital System Design
- Functional Simulation

---

## Future Improvements

- Status Flag Implementation
- Overflow Detection
- Carry Lookahead Logic
- 16-bit/32-bit ALU Expansion
- FPGA Hardware Validation

---

## Authors

Lakshmi Omkareswar Thummagunta,
Sriya Adimulam
