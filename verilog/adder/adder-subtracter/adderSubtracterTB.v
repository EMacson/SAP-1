`timescale 1ns / 1ps

module tb_adder_subtracter;

    reg [7:0] a, b;
    reg SUB;
    wire [7:0] sum;
    wire c_out;

    adder_subtracter uut (
        .a(a), .b(b), .SUB(SUB), .s(sum), .carry(c_out)
    );

    initial begin
        $dumpfile("adderSubtracterTB.vcd");
        $dumpvars(0, tb_adder_subtracter);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b SUB=%b sum=%b cout=%b", $time, a, b, SUB, sum, c_out);

        a = 8'b00000001; b = 8'b00000010; SUB = 0; #10;  // s=4'b0011
        a = 8'b00000011; b = 8'b00000001; SUB = 1;  #10; // s=4'b0010
        a = 8'b10001010; b = 8'b00000101; SUB = 1;  #10;
        $finish;
    end

endmodule