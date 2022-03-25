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

// A为32位地址，故需要2^32个8位寄存器（为方便进行仿真，仅使用512个）
reg [7:0] store[255:0];

initial
begin
    // 数据初始化（十六进制读入）
    // 若遇到无法载入问题，请尝试修改路径（绝对路径或相对路径）
    $readmemh("../../../../../Data/DataMem.txt", store);
end

assign RD[31:24] = store[A];
assign RD[23:16] = store[A+1];
assign RD[15:8] = store[A+2];
assign RD[7:0] = store[A+3];

// 当时钟上升沿时改变进行数据写
always@(posedge clk)
begin
    case(WE)
        // 进行数据存储
        1'b1:
        begin
            // MIPS使用小端模式进行数据存储
            store[A] <= WD[31:24];
            store[A+1] <= WD[23:16];
            store[A+2] <= WD[15:8];
            store[A+3] <= WD[7:0];
        end
    endcase
end

endmodule