`timescale 1ns/1ps

module bcd_adder_tb;

reg [3:0] A;
reg [3:0] B;

wire [3:0] Sum;
wire Carry;

bcd_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin

    $display("Time\tA\tB\tCarry\tSum");

    $monitor("%0t\t%b\t%b\t%b\t%b",
             $time, A, B, Carry, Sum);

    // 3 + 4 = 7
    A = 4'b0011;
    B = 4'b0100;
    #10;

    // 5 + 4 = 9
    A = 4'b0101;
    B = 4'b0100;
    #10;

    // 5 + 7 = 12
    A = 4'b0101;
    B = 4'b0111;
    #10;

    // 8 + 6 = 14
    A = 4'b1000;
    B = 4'b0110;
    #10;

    // 9 + 9 = 18
    A = 4'b1001;
    B = 4'b1001;
    #10;

    $finish;

end

endmodule