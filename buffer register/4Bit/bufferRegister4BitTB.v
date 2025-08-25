`timescale 1ns / 1ps
`include "../../clock/clock.v"

module tb_buffer_register_4_bit;

    reg [3:0] x;
    reg load;
    wire clk;
    wire [3:0] q, p;

    clock clk_gen(clk);

    buffer_register_4_bit dut (.x(x), .load(load), .clk(clk), .q(q), .p(p));

    initial begin
        $dumpfile("bufferRegister4BitTB.vcd");
        $dumpvars(0, tb_buffer_register_4_bit);
        #100 $finish;
    end

    initial begin
        $monitor("t=%0t | d=%b load=%b clk=%b q=%b p=%b", $time, x, load, clk, q, p);

        x = 4'b0001; load = 1; #20;
        
    end

endmodule