PicoRV32 – Minimal RISC-V Core

Objective:
Analyze and simulate a simple RISC-V processor.

Tools Used:
1. Verilog HDL
2. Icarus Verilog
3. GTKWave

Features:
- Program Counter
- Instruction Counter
- Clock Driven Execution

Simulation:
iverilog -o sim picorv32_simple.v testbench.v
vvp sim
gtkwave picorv32.vcd