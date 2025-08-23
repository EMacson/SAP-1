`timescale 1ns / 1ps

module tb_adder_subtracter_4Bit;

    reg [3:0] a, b;
    reg SUB;
    wire [3:0] sum;
    wire c_out;

    adder_subtracter_4Bit uut (
        .a(a), .b(b), .SUB(SUB), .s(sum), .carry(c_out)
    );

    initial begin
        $dumpfile("adderSubtracter4BitTB.vcd");
        $dumpvars(0, tb_adder_subtracter_4Bit);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b SUB=%b sum=%b cout=%b", $time, a, b, SUB, sum, c_out);

        a = 4'b0001; b = 4'b0010; SUB = 0; #10;  // s=4'b0011
        a = 4'b0011; b = 4'b0001; SUB = 1;  #10; // s=4'b0010
        a = 4'b1010; b = 4'b0101; SUB = 0;  #10;

        $finish;
    end

endmodule