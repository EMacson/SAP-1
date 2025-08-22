`timescale 1ns / 1ps

module half_adder (
    input a,
    input b,
    output wire sum,
    output wire carry
);

    assign sum = a ^ b;
    assign carry = a & b;

endmodule