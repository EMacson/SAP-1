`timescale 1ns / 1ps
`include "../clock/clock.v"

module tb_d_flip_flop;

    reg d;
    wire clk, q, p;

    clock clk_gen(clk);

    d_flip_flop dut (.d(d), .clk(clk), .q(q), .p(p));

    initial begin
        $dumpfile("dFlipFlopTB.vcd");
        $dumpvars(0, tb_d_flip_flop);
        #100 $finish;
    end

    initial begin
        $monitor("t=%0t | d=%b clk=%b q=%b p=%b", $time, d, clk, q, p);

        d = 0; #20;
        d = 1; #20;
        d = 0; #20;
        d = 1; #20;
    end

endmodule