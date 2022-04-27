`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
// 
// Create Date: 2021/11/08 18:05:13
// Design Name: 
// Module Name: CLA32
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

module CLA32(input [31:0] a, //32位超前进位加法器
           input [31:0] b,
           input c_in,
           output [31:0] sum,
           output overflow);
    wire [1:0] P, G;
    wire res1, res2, res3, c_1;
    CLA16 add1(a[15:0], b[15:0], c_in, sum[15:0], G[0], P[0]);
    CLA16 add2(a[31:16], b[31:16], c_1, sum[31:16], G[1], P[1]);
    and a1(res1, P[0], c_in);
    or a2(c_1, G[0], res1);
    and a3(res2, P[1], P[0], c_in);
    and a4(res3, P[1], G[0]);
    or a5(overflow, G[1], res2, res3);
endmodule
