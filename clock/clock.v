`timescale 1ns/1ps

module clock (
    output reg clk1
);

    initial clk1 = 0;

    always #1 clk1 = ~clk1; // toggle every 1 time unit

endmodule
