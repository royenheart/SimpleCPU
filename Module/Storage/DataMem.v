`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: DataMem
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

module DataMem (
    // 32位数据存储地址
    input wire [31:0] A,
    // 32位数据读取
    input wire [31:0] WD,
    // 数据存储判断
    input wire WE,
    input wire clk,
    output wire[31:0] RD
);

// A为32位地址，故需要2^32个8位寄存器（为方便进行仿真，仅使用256个）
reg [31:0] store[255:0];

initial
begin
    // 数据初始化（十六进制读入）
    $readmemh("../../../../../Data/DataMem.txt", store);
end

assign RD = store[A];

// 当时钟上升沿时改变进行数据写
always@(posedge clk)
begin
    case(WE)
        // 进行数据存储
        1'b1:
        begin
            // MIPS使用小端模式进行数据存储
            store[A] <= WD;
        end
    endcase
end

endmodule