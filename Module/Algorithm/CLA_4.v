`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
// 
// Create Date: 2021/11/08 18:08:03
// Design Name: 
// Module Name: CLA_4
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


module CLA_4(
    P, G, c_in, cout, Gm, Pm
);

input [3:0] P;
input [3:0] G;
input c_in;
output [3:0] cout;
output Gm;
output Pm;

wire [3:0] P;
wire [3:0] G;
wire c_in;
wire [3:0] cout;
wire Gm;
wire Pm;

wire now1, now2, now3, now4, now5, now6, now7, now8, now9, now10;
and a_1(now1 ,P[0], c_in);
or a_2(cout[0], G[0], now1);
and a_4(now2, P[1], P[0], c_in);
and a_5(now3, P[1], G[0]);
or a_6(cout[1], G[1], now2, now3);
and a_8(now4, P[2], P[1], P[0], c_in);
and a_9(now5, P[2], P[1], G[0]);
and a_10(now6, P[2], G[1]);
or a_11(cout[2], G[2], now4, now5, now6);
and a_13(now7, P[3], P[2], P[1], P[0], c_in);
and a_14(now8, P[3], P[2], P[1], G[0]);
and a_15(now9, P[3], P[2], G[1]);
and a_16(now10, P[3], G[2]);
or a_17(cout[3], G[3], now7, now8, now9, now10);
or a_19(Gm, G[3], now8, now9, now10);
and a_20(Pm, P[3], P[2], P[1], P[0]);
endmodule