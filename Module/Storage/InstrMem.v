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

// A32位寻址，有2^32个32位指令存储
reg [31:0] instrs[4294967295:0];

always@(*)
begin
    RD <= instrs[A];
end

endmodule