`timescale 1ns/1ps

module vedic_multiplier_tb;

reg [3:0] A;
reg [3:0] B;

wire [7:0] P;

vedic_multiplier uut(
.A(A),
.B(B),
.P(P)
);

initial
begin

$dumpfile("vedic.vcd");
$dumpvars(0,vedic_multiplier_tb);

A = 4'b0000; B = 4'b0000;

#10 A = 4'd3;  B = 4'd2;
#10 A = 4'd4;  B = 4'd5;
#10 A = 4'd7;  B = 4'd3;
#10 A = 4'd9;  B = 4'd6;
#10 A = 4'd15; B = 4'd15;

#50 $finish;

end

endmodule
