`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: InstrMem
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

module InstrMem(
    input wire [31:0] A,
    output reg [31:0] RD
);

// A32位寻址，有2^32个32位指令存储（为方便进行仿真，仅使用256个）
reg [7:0] instrs[255:0];

initial
begin
    // 数据初始化（十六进制读入）
    $readmemh("../../../../../Data/InstrMem.txt", instrs);
end

always@(*)
begin
    RD <= {instrs[A], instrs[A+1], instrs[A+2], instrs[A+3]};
end

endmodule