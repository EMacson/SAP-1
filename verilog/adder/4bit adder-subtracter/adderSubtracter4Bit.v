`timescale 1ns / 1ps
`include "../full/fullAdder.v"

module adder_subtracter_4Bit (
    input wire [3:0] a,
    input wire [3:0] b,
    input wire SUB,
    output wire [3:0] s,
    output wire carry
);

    wire c1, c2, c3;

    full_adder fa0 (.a(a[0]), .b(b[0] ^ SUB), .c_in(SUB), .sum(s[0]), .c_out(c1));
    full_adder fa1 (.a(a[1]), .b(b[1] ^ SUB), .c_in(c1), .sum(s[1]), .c_out(c2));
    full_adder fa2 (.a(a[2]), .b(b[2] ^ SUB), .c_in(c2), .sum(s[2]), .c_out(c3));
    full_adder fa3 (.a(a[3]), .b(b[3] ^ SUB), .c_in(c3), .sum(s[3]), .c_out(carry));

endmodule