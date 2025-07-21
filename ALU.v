module ALU(
    input [7:0] A, B,
    input [3:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output Zero
);
    assign Zero = (ALU_Out == 8'b0);

    always @(*) begin
        case(ALU_Sel)
            4'b0000: ALU_Out = A + B;
            4'b0001: ALU_Out = A - B;
            4'b0010: ALU_Out = A & B;
            4'b0011: ALU_Out = A | B;
            4'b0100: ALU_Out = A ^ B;
            default: ALU_Out = 8'b0;
        endcase
    end
endmodule
