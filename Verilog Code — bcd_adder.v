module bcd_adder (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Sum,
    output       Carry
);

reg [4:0] binary_sum;
reg [4:0] corrected_sum;

always @(*) begin

    // Add two BCD digits
    binary_sum = A + B;

    // BCD correction
    if (binary_sum > 5'd9)
        corrected_sum = binary_sum + 5'd6;
    else
        corrected_sum = binary_sum;

end

assign Sum = corrected_sum[3:0];
assign Carry = corrected_sum[4];

endmodule