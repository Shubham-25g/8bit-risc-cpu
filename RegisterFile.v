module RegisterFile(
    input clk,
    input [2:0] rs1, rs2, rd,
    input [7:0] write_data,
    input reg_write,
    output [7:0] read_data1, read_data2
);
    reg [7:0] reg_array [0:7];

    initial begin
        reg_array[0] = 8'd10;
        reg_array[1] = 8'd20;
        reg_array[2] = 8'd0;
        reg_array[3] = 8'd0;
        reg_array[4] = 8'd0;
        reg_array[5] = 8'd0;
        reg_array[6] = 8'd0;
        reg_array[7] = 8'd0;
    end

    assign read_data1 = reg_array[rs1];
    assign read_data2 = reg_array[rs2];

    always @(posedge clk) begin
        if (reg_write) begin
            reg_array[rd] <= write_data;
        end
    end
endmodule
