`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RoyenHeart
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: RegFiles
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

// 寄存器组模块，使用文本文件读入进行数据的初始化
module RegFiles(
    clk, A1, A2, A3, WD3, WE3, RD1, RD2
);

input clk;
input [4:0] A1;
input [4:0] A2;
input [4:0] A3;
input [31:0] WD3;
input WE3;
output [31:0] RD1;
output [31:0] RD2;
    
wire clk;
wire [4:0] A1;
wire [4:0] A2;
wire [4:0] A3;
wire [31:0] WD3;
wire WE3;
wire [31:0] RD1;
wire [31:0] RD2;


// 总共需要32个32位的寄存器
reg [31:0] regs[31:0]; 

initial
begin
    // 数据初始化（十六进制读入）
    // 若遇到无法载入问题，请尝试修改路径（绝对路径或相对路径）
    $readmemh("../../../../../Data/RegFiles.txt", regs);  
    // 0号寄存器存储常量0
    regs[0] = 32'd0;
end

assign RD1 = regs[A1];
assign RD2 = regs[A2];

always@(posedge clk)
begin
    if(WE3) regs[A3] <= WD3;
end

endmodule