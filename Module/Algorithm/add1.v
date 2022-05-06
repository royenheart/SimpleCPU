`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
// 
// Create Date: 2021/11/08 18:04:09
// Design Name: 
// Module Name: add1
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

module add1(
    a, b, c_in, sum, G, P
);

input a;
input b;
input c_in;
output sum;
output G;
output P;

wire a;
wire b;
wire c_in;
wire sum;
wire G;
wire P;

xor a1(sum, a, b, c_in);
and a2(G, a, b);
or a3(P, a, b);
endmodule
