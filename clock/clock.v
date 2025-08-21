`timescale 1ps/1ps

module clock (
    output reg clk1
);

    initial begin
        clk1 = 0;
    end

    always #500 clk1 = ~clk1; // toggle every 1 time unit

endmodule
