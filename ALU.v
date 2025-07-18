
module ALU(input [7:0] A, B, input [2:0] ALU_Sel, output reg [7:0] ALU_Out, output Zero);
    always @(*) begin
        case (ALU_Sel)
            3'b000: ALU_Out = A + B;
            3'b001: ALU_Out = A - B;
            3'b010: ALU_Out = A & B;
            3'b011: ALU_Out = A | B;
            3'b100: ALU_Out = A ^ B;
            default: ALU_Out = 0;
        endcase
    end
    assign Zero = (ALU_Out == 0);
endmodule
