`timescale 1ns / 1ps
`include "../../D Flip Flop Preset/dFlipFlopPreset.v"

module buffer_register_preset_4_bit (
    input wire [3:0] x,
    input load,
    input clk,
    output wire [3:0] q,
    output wire [3:0] p
);

    d_flip_flop_preset dff0 (.d(x[0]), .clk(clk), .preset(~load), .clear(~load), .q(q[0]), .p(p[0]));
    d_flip_flop_preset dff1 (.d(x[1]), .clk(clk), .preset(~load), .clear(~load), .q(q[1]), .p(p[1]));
    d_flip_flop_preset dff2 (.d(x[2]), .clk(clk), .preset(~load), .clear(~load), .q(q[2]), .p(p[2]));
    d_flip_flop_preset dff3 (.d(x[3]), .clk(clk), .preset(~load), .clear(~load), .q(q[3]), .p(p[3]));

endmodule