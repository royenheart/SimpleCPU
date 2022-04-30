`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: InstrMemBROM
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

// 使用fpga内部的静态存储器distibuted memory并使用vivado提供的distributed memory generator生成rom模拟指令存储器
module InstrMemMultiCycle_ReadFTxt(
    A, InstrMemRW, RD
);

input [31:0] A;
input InstrMemRW;
output [31:0] RD;

wire [31:0] A;
wire InstrMemRW;
reg [31:0] RD;

wire [9:0] address;
assign address = A[9:0];

// A32位寻址，有2^32个32位指令存储（为方便进行仿真，仅使用256个）
reg [7:0] instrs[255:0];

initial
begin
    // 数据初始化（十六进制读入）
    // 若遇到无法载入问题，请尝试修改路径（绝对路径或相对路径）
    $readmemh("../../../../../Data/InstrMem.txt", instrs);
end

initial begin
    RD <= 32'b0;
end

always @(*) begin
    if (InstrMemRW) RD <= {instrs[address], instrs[address+1], instrs[address+2], instrs[address+3]};
    else RD <= 32'b0;
end

endmodule