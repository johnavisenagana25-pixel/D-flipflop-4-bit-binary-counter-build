// Testbench for Flip-Flop and Counter
module testbench;

// Inputs
reg clk;
reg d;

// Outputs
wire q;
wire [3:0] count;

// Instantiate D Flip-Flop
d_flipflop uut1(

    .clk(clk),
    .d(d),

    .q(q)

);

// Instantiate Counter
counter uut2(

    .clk(clk),

    .count(count)

);

// Clock generation
always #5 clk = ~clk;

initial begin

    // Generate waveform
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);

    // Monitor outputs
    $monitor(
    "Time=%0t clk=%b d=%b q=%b count=%b",
    $time,clk,d,q,count
    );

    // Initialize signals
    clk = 0;
    d = 0;

    #10;

    d = 1;

    #20;

    d = 0;

    #20;

    d = 1;

    #20;

    // Finish simulation
    $finish;

end

endmodule
