`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RoyenHeart
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: PCAddr
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

// 指令地址选择器
module PCAddr(
    clk, rst,
    Branch, CurPC, ExtendImm, address, RS, NextPC
);

input clk;
input rst;
input [1:0] Branch;
input [31:0] CurPC;
input [31:0] ExtendImm;
input [25:0] address;
input [31:0] RS;
output [31:0] NextPC;
    
wire clk;
wire rst;
wire [1:0] Branch;
wire [31:0] CurPC;
wire [31:0] ExtendImm;
wire [25:0] address;
wire [31:0] RS;
reg [31:0] NextPC;

// 初始化数据
initial
begin
    NextPC <= 32'b0;
end

wire [31:0] PCPlus4, PCPlusExtend, PCPlusAddr;
// PC + 4
assign PCPlus4 = CurPC + 3'b100;
// PC + 4 + (sign-extend)immediate<<2
assign PCPlusExtend = PCPlus4 + (ExtendImm << 2);
// PC = (PC+4)[31..28],address,0,0
assign PCPlusAddr = {PCPlus4[31:28], address, 2'b00};

always@(*)
begin
    if(!rst) NextPC <= 32'b0;
    else begin
        case(Branch)
            2'b00: NextPC <= PCPlus4;
            2'b01: NextPC <= PCPlusExtend;
            2'b10: NextPC <= PCPlusAddr;
            2'b11: NextPC <= RS;
        endcase
    end
end

endmodule

