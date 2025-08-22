`timescale 1ns / 1ps

module tb_unsigned_adder_8bit;

    reg [7:0] a, b;
    wire [7:0] sum;
    wire c_out;

    unsigned_adder_8bit uut (
        .a(a), .b(b), .s(sum), .carry(c_out)
    );

    initial begin
        $dumpfile("8BitUnsignedAdderTB.vcd");
        $dumpvars(0, tb_unsigned_adder_8bit);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b sum=%b cout=%b", $time, a, b, sum, c_out);

        a = 8'b00000001; b = 8'b00000010; #10; // s=8'b00000011
        a = 8'b00001111; b = 8'b00000001; #10; // s=8'b00010000
        a = 8'b00001010; b = 8'b00000101; #10;
        a = 8'b11111111; b = 8'b00000001; #10; // s=8'b00000000 carry=1
        $finish;
    end

endmodule
