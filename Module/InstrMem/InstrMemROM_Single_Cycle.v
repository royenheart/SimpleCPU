`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RoyenHeart
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

// 单周期所用指令存储器
// 使用fpga内部的存储器distibuted memory并使用vivado提供的distributed memory generator生成rom模拟指令存储器
module InstrMemROM_Single_Cycle(
    input wire [31:0] A,
    output wire [31:0] RD
);

wire [9:0] address;
assign address = A[9:0];

wire [31:0] instrs;
assign RD = instrs;

SimpleCPU01Design_wrapper u_mem_generator_0(
    .a_0        (address),
    .spo_0      (instrs [31:24])
);

SimpleCPU01Design_wrapper u_mem_generator_1(
    .a_0        (address + 1),
    .spo_0      (instrs [23:16])
);

SimpleCPU01Design_wrapper u_mem_generator_2(
    .a_0        (address + 2),
    .spo_0      (instrs [15:8])
);

SimpleCPU01Design_wrapper u_mem_generator_3(
    .a_0        (address + 3),
    .spo_0      (instrs [7:0])
);

endmodule