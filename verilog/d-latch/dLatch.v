`timescale 1ns / 1ps

module d_latch (
    input d,
    input clk,
    output wire q,
    output wire p
);
    wire s, r;

    assign s = (~d) & clk;
    assign r = d & clk;

    assign q = ~(s & p);
    assign p = ~(r & q);

endmodule