// D Flip-Flop Module
module d_flipflop(

    input clk,
    input d,

    output reg q

);

// Trigger on positive clock edge
always @(posedge clk)

begin

    q <= d;

end

endmodule


// 4-Bit Counter Module
module counter(

    input clk,

    output reg [3:0] count

);

// Counter operation
always @(posedge clk)

begin

    count <= count + 1;

end

endmodule
