`timescale 1ns / 1ps
`include "../clock/clock.v"

module tb_d_flip_flop;

    reg d, preset, clear;
    wire clk, q, p;

    clock clk_gen(clk);

    d_flip_flop_preset dut (.d(d), .clk(clk), .preset(preset), .clear(clear), .q(q), .p(p));

    initial begin
        $dumpfile("dFlipFlopPresetTB.vcd");
        $dumpvars(0, tb_d_flip_flop);
        #100 $finish;
    end

    initial begin
        $monitor("t=%0t | d=%b preset=%b clear=%b clk=%b q=%b p=%b", $time, d, preset, clear, clk, q, p);

        //d = 0; preset=0; clear=0; #20;
        //d = 0; preset=0; clear=1; #20;
        d = 0; preset=1; clear=0; #20;
        d = 1; preset=1; clear=1; #20;
        d = 0; preset=1; clear=1; #20;
        d = 1; preset=1; clear=0; #20;
        d = 1; preset=0; clear=1; #20;
    end

endmodule