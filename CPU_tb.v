
module CPU_tb;
    reg clk;
    wire [7:0] result;
    wire zero_flag;
    CPU cpu_inst(.clk(clk), .result(result), .zero_flag(zero_flag));
    always #5 clk = ~clk;
    initial begin
        $dumpfile("cpu_pipeline.vcd");
        $dumpvars(0, CPU_tb);
        clk = 0;
        #100 $stop;
    end
endmodule
