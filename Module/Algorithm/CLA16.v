`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
// 
// Create Date: 2021/11/08 18:06:03
// Design Name: 
// Module Name: CLA16
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


module CLA16(input [15:0] a,  //16位超前进位加法器
           input [15:0] b,
           input c_in,
           output [15:0] sum,
           output Gm,
           output Pm);
    wire [3:0] P, G, cout;
    CLA_add4 add1(a[3:0], b[3:0], c_in, sum[3:0], G[0], P[0]);
    CLA_add4 add2(a[7:4], b[7:4], cout[0], sum[7:4], G[1], P[1]);
    CLA_add4 add3(a[11:8], b[11:8], cout[1], sum[11:8], G[2], P[2]);
    CLA_add4 add4(a[15:12], b[15:12], cout[2], sum[15:12], G[3], P[3]);
    CLA_4 add5(P, G, c_in, cout, Gm, Pm);
endmodule