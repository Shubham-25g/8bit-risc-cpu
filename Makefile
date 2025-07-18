
SRC = CPU_tb.v CPU.v ALU.v RegisterFile.v ControlUnit.v

all: run

run:
	iverilog -o cpu_tb.vvp $(SRC)
	vvp cpu_tb.vvp

wave:
	gtkwave cpu_pipeline.vcd

clean:
	rm -f *.vvp *.vcd
