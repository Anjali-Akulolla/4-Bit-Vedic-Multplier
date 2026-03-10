`timescale 1ns/1ps

module vedic_multiplier(
    input  [3:0] A,
    input  [3:0] B,
    output [7:0] P
);

wire [3:0] p0,p1,p2,p3;

assign p0 = A & {4{B[0]}};
assign p1 = A & {4{B[1]}};
assign p2 = A & {4{B[2]}};
assign p3 = A & {4{B[3]}};

wire [7:0] sum1,sum2,sum3;

assign sum1 = {4'b0000,p0};
assign sum2 = {3'b000,p1,1'b0};
assign sum3 = {2'b00,p2,2'b00};

wire [7:0] temp;

assign temp = sum1 + sum2;
assign P = temp + sum3 + {1'b0,p3,3'b000};

endmodule
