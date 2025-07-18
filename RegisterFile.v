
module RegisterFile(input clk, input [2:0] rs1, rs2, rd, input [7:0] write_data, input reg_write, output [7:0] read_data1, read_data2);
    reg [7:0] registers [0:7];
    assign read_data1 = registers[rs1];
    assign read_data2 = registers[rs2];
    always @(posedge clk) begin
        if (reg_write) registers[rd] <= write_data;
    end
endmodule
