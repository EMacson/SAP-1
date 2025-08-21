`timescale 1ns/1ps
`include "../clock/clock.v"

module tb_d_latch;

    reg d;
    wire clk, q, p; // wire driven by clock module
    
    clock clk_gen(clk);

    d_latch uut (d, clk, q, p);

    initial begin
        $dumpfile("dLatchTB.vcd");
        $dumpvars(0, tb_d_latch);
        #100 $finish;
    end

    initial begin
        $display("test d-latch");
        $monitor("t=%0t | d=%b clk=%b q=%b p=%b", $time, d, clk, q, p);

        d = 0; #20;
        d = 1; #20;
        d = 0; #20;
        d = 1; #20;
    end

endmodule