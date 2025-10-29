`timescale 1ns/1ps

module tb_clock;

    wire clk; // wire driven by clock module
    
    clock dut (clk);

    initial begin
        $dumpfile("clockTB.vcd");
        $dumpvars(0, tb_clock);
        $monitor("time=%0t | clk=%b", $time, clk);
        #20 $finish;
    end

endmodule
