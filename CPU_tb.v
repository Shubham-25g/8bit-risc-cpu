module CPU_tb;
    reg clk;
    wire [7:0] result;
    wire zero_flag;
    wire [3:0] pc_out;

    CPU cpu_inst(
        .clk(clk),
        .result(result),
        .zero_flag(zero_flag),
        .pc_out(pc_out)
    );

    initial begin
        $dumpfile("cpu_pipeline.vcd");
        $dumpvars(0, CPU_tb);
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        #100; // Run for some cycles
        $stop;
    end
endmodule
