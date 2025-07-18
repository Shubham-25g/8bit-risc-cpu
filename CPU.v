
module CPU(input clk, output [7:0] result, output zero_flag);
    reg [3:0] PC;
    reg [7:0] instruction_memory [0:15];
    reg [7:0] IF_ID_instruction;

    wire [2:0] rs1, rs2, rd, ALU_Sel;
    wire [7:0] read_data1, read_data2, alu_out;
    wire reg_write;

    initial begin
        instruction_memory[0] = 8'h08;
        instruction_memory[1] = 8'h19;
        instruction_memory[2] = 8'h2A;
        instruction_memory[3] = 8'h3B;
    end

    always @(posedge clk) begin
        IF_ID_instruction <= instruction_memory[PC];
        PC <= PC + 1;
    end

    ControlUnit CU(.instruction(IF_ID_instruction), .rs1(rs1), .rs2(rs2), .rd(rd), .ALU_Sel(ALU_Sel), .reg_write(reg_write));
    RegisterFile RF(.clk(clk), .rs1(rs1), .rs2(rs2), .rd(rd), .write_data(alu_out), .reg_write(reg_write), .read_data1(read_data1), .read_data2(read_data2));
    ALU alu(.A(read_data1), .B(read_data2), .ALU_Sel(ALU_Sel), .ALU_Out(alu_out), .Zero(zero_flag));

    assign result = alu_out;
endmodule
