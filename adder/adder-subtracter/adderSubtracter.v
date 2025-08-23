`timescale 1ns / 1ps
`include "../4bit adder-subtracter/adderSubtracter4Bit.v"

module adder_subtracter (
    input wire [7:0] a,
    input wire [7:0] b,
    input wire SUB,
    output wire [7:0] s,
    output wire carry
);

    wire c1;

    adder_subtracter_4Bit as0 (.a(a[3:0]), .b(b[3:0]), .SUB(SUB), .s(s[3:0]), .carry(c1));
    adder_subtracter_4Bit as1 (.a(a[7:4]), .b(b[7:4]), .SUB(c1), .s(s[7:4]), .carry(carry));
    

endmodule