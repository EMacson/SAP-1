`timescale 1ns / 1ps

module d_flip_flop_preset (
    input d,
    input clk,
    input preset,
    input clear,
    output reg q,
    output wire p
);

    always @(posedge clk or negedge clear or negedge preset) begin
        if (!clear)
            q <= 0;
        else if (!preset)
            q <= 1;
        else
            q <= d;
    end

    assign p = ~q;

endmodule