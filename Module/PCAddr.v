`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
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

// 指令地址寄存
module PCAddr(
    input wire [31:0] PC,
    input wire clk,
    output wire [31:0] IPC
);

reg [31:0] store;

// 初始化数据
initial
begin
    store <= 32'd0;
end

// 向指令存储器传输当前指令地址
assign IPC = store;

always@(posedge clk)
begin
    store <= PC;
end

endmodule