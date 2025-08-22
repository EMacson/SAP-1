`timescale 1ns / 1ps

module tb_full_adder;

    reg a, b, c_in;
    wire sum, c_out;

    full_adder dut (a, b, c_in, sum, c_out);

    initial begin
        $dumpfile("fullAdderTB.vcd");
        $dumpvars(0, tb_full_adder);
    end

    initial begin
        $display("test full adder");
        $monitor("a=%b b=%b c_in=%b sum=%b c_out=%b", a, b, c_in, sum, c_out);

        a=0; b=0; c_in=0; #10; // sum=0, c_out=0
        a=0; b=0; c_in=1; #10; // sum=1, c_out=0
        a=0; b=1; c_in=0; #10; // sum=1, c_out=0
        a=0; b=1; c_in=1; #10; // sum=0, c_out=1
        a=1; b=0; c_in=0; #10; // sum=1, c_out=0
        a=1; b=0; c_in=1; #10; // sum=0, c_out=1
        a=1; b=1; c_in=1; #10; // sum=1, c_out=1

        $finish;
    end

endmodule