`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
// 
// Create Date: 2022/04/13 19:47:34
// Design Name: 
// Module Name: PC
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

module PC(
    clk, rst, 
    PCWre, NextPC, CurPC
);

input clk;
input rst;
input PCWre;
input [31:0] NextPC;
output [31:0] CurPC;

wire clk;
wire rst;
wire PCWre;
wire [31:0] NextPC;
reg [31:0] CurPC;

initial
begin
    // 初始化数据
    CurPC <= 32'b0;
end

always @(posedge clk)
begin
    if(rst == 1'b0) CurPC <= 32'b0;
    else begin
        if(PCWre == 1'b1) CurPC <= NextPC;
        else CurPC <= CurPC;
    end
end

endmodule
