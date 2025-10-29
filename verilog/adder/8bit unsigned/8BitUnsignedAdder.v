`timescale 1ns / 1ps
`include "../full/fullAdder.v"
`include "../half/halfAdder.v"

module unsigned_adder_8bit(
    input wire [7:0] a,
    input wire [7:0] b,
    output wire [7:0] s,
    output wire carry
);

    wire c1, c2, c3, c4, c5, c6, c7, c8;

    half_adder ha0 (.a(a[0]), .b(b[0]), .sum(s[0]), .carry(c1));
    full_adder fa1 (.a(a[1]), .b(b[1]), .c_in(c1), .sum(s[1]), .c_out(c2));
    full_adder fa2 (.a(a[2]), .b(b[2]), .c_in(c2), .sum(s[2]), .c_out(c3));
    full_adder fa3 (.a(a[3]), .b(b[3]), .c_in(c3), .sum(s[3]), .c_out(c4));
    full_adder fa4 (.a(a[4]), .b(b[4]), .c_in(c4), .sum(s[4]), .c_out(c5));
    full_adder fa5 (.a(a[5]), .b(b[5]), .c_in(c5), .sum(s[5]), .c_out(c6));
    full_adder fa6 (.a(a[6]), .b(b[6]), .c_in(c6), .sum(s[6]), .c_out(c7));
    full_adder fa7 (.a(a[7]), .b(b[7]), .c_in(c7), .sum(s[7]), .c_out(carry));

endmodule