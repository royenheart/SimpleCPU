`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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

module add1(input a, input b, input c_in, output sum, output G, output P);  //超前进位加法器中1位加法器（计算P、G、sum）
        xor a1(sum, a, b, c_in);
        and a2(G, a, b);
        or a3(P, a, b);
endmodule
