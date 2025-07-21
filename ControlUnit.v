module ControlUnit(
    input [7:0] instruction,
    output [2:0] rs1, rs2, rd,
    output [3:0] ALU_Sel,
    output reg_write
);
    assign rs1 = instruction[7:5];
    assign rs2 = instruction[4:2];
    assign rd  = instruction[1:0];
    assign ALU_Sel = instruction[7:4]; // Upper 4 bits: opcode
    assign reg_write = 1'b1;           // Always write back for simplicity
endmodule
