`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/07 19:41:32
// Design Name: 
// Module Name: Extend
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


module Extend(
    ExtSel, immediate, Extendout
);

input ExtSel;
input [15:0] immediate;
output [31:0] Extendout;

wire ExtSel;
wire [15:0] immediate;
wire [31:0] Extendout;

assign Extendout[15:0] = immediate;
assign Extendout[31:16] = (ExtSel & immediate[15]) ? {16{1'b1}} : {16{1'b0}};

endmodule

