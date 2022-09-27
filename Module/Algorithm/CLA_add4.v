`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ruoxuan Wang
// 
// Create Date: 2021/11/08 18:06:49
// Design Name: 
// Module Name: CLA_add4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CLA_add4(
    a, b, c_in, sum, Gm, Pm
);

input [3:0] a;
input [3:0] b;
input c_in;
output [3:0] sum;
output Gm;
output Pm;

wire [3:0] a;
wire [3:0] b;
wire c_in;
wire [3:0] sum;
wire Gm;
wire Pm;

wire [3:0] P, G, cout;
add1 a1(a[0], b[0], c_in, sum[0], G[0], P[0]);
add1 a2(a[1], b[1], cout[0], sum[1], G[1], P[1]);
add1 a3(a[2], b[2], cout[1], sum[2], G[2], P[2]);
add1 a4(a[3], b[3], cout[2], sum[3], G[3], P[3]);
CLA_4 a5(P, G, c_in, cout, Gm, Pm);
endmodule
