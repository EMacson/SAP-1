`timescale 1ns / 1ps

module d_flip_flop (
    input d,
    input clk,
    output wire q,
    output wire p
);

    wire x, y;

    assign x = ~(d & clk);
    assign y = ~((~d) & clk);

    assign q = ~(x & p);
    assign p = ~(y & q);

endmodule