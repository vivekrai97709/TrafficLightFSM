module traffic1_tb ();
    reg clk;
    reg rst;

    wire AG;
    wire AY;
    wire AR;

    wire BG;
    wire BY;
    wire BR;

    traffic1 uut (
        .clk(clk),
        .rst(rst),
        .AG(AG),
        .AY(AY),
        .AR(AR),
        .BG(BG),
        .BY(BY),
        .BR(BR)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, traffic1_tb);
        rst = 1; 
        #10 rst = 0;

        #100 $finish; 
    end
endmodule