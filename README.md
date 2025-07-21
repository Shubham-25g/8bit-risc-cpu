# 🧩 8-bit Pipelined RISC CPU — Verilog Project

A custom-designed 8-bit RISC CPU core implemented in Verilog, featuring a simple 2-stage pipeline, ALU, register file, ROM, and hazard-free control flow.

Designed and simulated for educational purposes to demonstrate core CPU architecture concepts, digital design skills, and RTL verification.

---

## 📌 Key Highlights

* ✅ 8-bit RISC-style architecture with minimal instruction set
* ✅ 2-stage instruction pipeline: Fetch & Execute
* ✅ Custom ALU & Register File modules
* ✅ ROM for instruction storage and PC flow
* ✅ Hazard-free instruction execution
* ✅ Verified using Icarus Verilog & GTKWave
* ✅ Testbenches for functional verification

---

## 🚀 How to Run

1️⃣ **Install Tools**

* [Icarus Verilog](http://iverilog.icarus.com/)
* [GTKWave](http://gtkwave.sourceforge.net/)

2️⃣ **Compile Design**

```
iverilog -o cpu_tb.vvp CPU_tb.v CPU.v ALU.v RegisterFile.v ControlUnit.v
```

3️⃣ **Run Simulation**

```
vvp cpu_tb.vvp
```

4️⃣ **View Waveforms**

```
gtkwave cpu_pipeline.vcd
```

---

## 📂 Project Structure

```
8bit_risc_cpu/
├── CPU.v             # Top-level CPU module
├── ALU.v             # Arithmetic Logic Unit
├── RegisterFile.v    # Register File
├── ControlUnit.v     # Control Unit
├── CPU_tb.v          # Testbench
├── cpu_pipeline.vcd  # Waveform dump
├── README.md
├── LICENSE
```

---

## 🎓 Why This Project

✅ **Educational:** Demonstrates basic CPU architecture and RTL design.
✅ **Practical:** Simulated with industry-standard open-source tools.
✅ **Internship Ready:** Highlights practical Verilog, modular design, and digital design fundamentals.

---

## 📬 About Me

**👤 Shubham Gupta**
B.Tech undergraduate interested in digital design, VLSI, and computer architecture.

🔗 [LinkedIn](https://www.linkedin.com/in/shubhamgupta2510)

---

## ⚖️ License

This project is licensed under the MIT License — see [LICENSE](./LICENSE) for details.