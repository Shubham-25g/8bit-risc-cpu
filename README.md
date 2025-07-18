
# 8-bit Pipelined RISC CPU (Verilog)

This is a simple 8-bit RISC CPU with a 2-stage pipeline written in Verilog.

## Features

- Program Counter, Instruction ROM
- 2-stage pipeline (IF/EX)
- Register File and ALU
- Control Unit for decode
- Simulated with Icarus Verilog + GTKWave

## How to Run

- `make run` → compiles and simulates the CPU.
- `make wave` → opens the simulation results in GTKWave.

## How It Works

- The CPU uses a simple 2-stage pipeline (IF/EX).
- Instructions are stored in ROM.
- The Control Unit decodes and sends control signals.
- The Register File and ALU execute operations.

## License

MIT

## Author

Shubham Gupta
