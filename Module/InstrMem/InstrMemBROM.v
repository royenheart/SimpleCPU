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

// 使用fpga内部的静态存储器block memory并使用vivado提供的block memory generator生成rom模拟指令存储器
module InstrMemBROM(
    input wire [31:0] A,
    output wire [31:0] RD
);

wire [31:0] instrs;
assign RD = instrs;

SimpleCPU01Design_wrapper u_mem_generator(
    .a_0        (A [31:0]),
    .spo_0      (instrs [31:0])
);

endmodule