`timescale 1ns / 1ps

module tb_half_adder;

    reg a, b;
    wire sum, carry;

    half_adder dut (a, b, sum, carry);

    initial begin
        $dumpfile("halfAdderTB.vcd");
        $dumpvars(0, tb_half_adder);
    end

    initial begin
        $display("test half adder");
        $monitor("a=%b b=%b carry=%b sum=%b", a, b, carry, sum);

        a=0; b=0; #10; // sum=0 carry=0
        a=0; b=1; #10; // sum=1 carry=0
        a=1; b=0; #10; // sum=1 carry=0
        a=1; b=1; #10; // sum=0 carry=0

        $finish;
    end

endmodule