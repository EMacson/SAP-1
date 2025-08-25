`timescale 1ns / 1ps
`include "../../D flip flop/dFlipFlop.v"

module buffer_register_4_bit (
    input wire [3:0] x,
    input load,
    input clk,
    output wire [3:0] q,
    output wire [3:0] p
);

    wire [3:0] d;

    assign d[0] = load ? x[0] : q[0];
    assign d[1] = load ? x[1] : q[1];
    assign d[2] = load ? x[2] : q[2];
    assign d[3] = load ? x[3] : q[3];

    d_flip_flop dff0 (.d(d[0]), .clk(clk), .q(q[0]), .p(p[0]));
    d_flip_flop dff1 (.d(d[1]), .clk(clk), .q(q[1]), .p(p[1]));
    d_flip_flop dff2 (.d(d[2]), .clk(clk), .q(q[2]), .p(p[2]));
    d_flip_flop dff3 (.d(d[3]), .clk(clk), .q(q[3]), .p(p[3]));

endmodule