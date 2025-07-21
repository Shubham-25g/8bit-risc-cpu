module CPU(
    input clk,
    output [7:0] result,
    output zero_flag,
    output [3:0] pc_out
);

    // Program Counter & ROM
    reg [3:0] PC = 4'b0000;
    reg [7:0] instruction_memory [0:15];

    // IF/ID pipeline register
    reg [7:0] IF_ID_instruction;

    // Control signals
    wire [2:0] rs1, rs2, rd;
    wire [3:0] alu_sel;
    wire reg_write;
    wire [7:0] read_data1, read_data2, alu_out;

    // Initialize ROM
    initial begin
        instruction_memory[0] = 8'b00001000; // ADD r0 + r1 -> r0
        instruction_memory[1] = 8'b00011001; // SUB r1 - r2 -> r1
        instruction_memory[2] = 8'b00101010; // AND r2 & r2 -> r2
        instruction_memory[3] = 8'b00111011; // OR  r3 | r3 -> r3
    end

    // IF stage: fetch instruction
    always @(posedge clk) begin
        IF_ID_instruction <= instruction_memory[PC];
        PC <= PC + 1;
    end

    assign pc_out = PC;

    // Control Unit
    ControlUnit CU(
        .instruction(IF_ID_instruction),
        .rs1(rs1), .rs2(rs2), .rd(rd),
        .ALU_Sel(alu_sel), .reg_write(reg_write)
    );

    // Register File
    RegisterFile RF(
        .clk(clk), .rs1(rs1), .rs2(rs2), .rd(rd),
        .write_data(alu_out), .reg_write(reg_write),
        .read_data1(read_data1), .read_data2(read_data2)
    );

    // ALU
    ALU alu(
        .A(read_data1), .B(read_data2),
        .ALU_Sel(alu_sel), .ALU_Out(alu_out), .Zero(zero_flag)
    );

    assign result = alu_out;

endmodule
