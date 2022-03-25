`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: CU
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

// 设置头文件定义，若遇到符号未定义，请尝试修改路径
`include "../headers/DefineCU.vh"

module CU(
    // 6位操作数输入
    input wire [5:0] op,
    // 6位功能数输入，与op共同决定输出
    input wire [5:0] func,
    // ALU Zero信号，用于判断条件跳转语句是否成立?
    // 只在跳转指令时需要进行判断?
    input wire zero,
    output wire MemtoReg,
    output wire MemWrite,
    output wire RegWrite,
    // 5位ALU功能选择
    output wire [4:0] ALUControl,
    output wire [1:0] Branch,
    output wire ALUSrcA,
    output wire ALUSrcB,
    output wire [4:0] RegDst,
    output wire Extend,
    output wire PCtoReg
);

wire [11:0] opfunc;

assign opfunc = {op,func};

assign MemtoReg = (op == `CUlw)?1'b1:1'b0;
assign MemWrite = (op == `CUsw)?1'b1:1'b0;
assign RegWrite = (op == `CUsw)?1'b0:1'b1;
assign ALUControl[4] = (opfunc == `CUjr || opfunc == `CUmul || op == `CUj || op == `CUjal)?1'b1:1'b0;
assign ALUControl[3] = (opfunc == `CUslt || opfunc == `CUsltu || opfunc == `CUsll || opfunc == `CUsrl || opfunc == `CUsra || opfunc == `CUsllv || opfunc == `CUsrlv || opfunc == `CUsrav || opfunc == `CUjr || op == `CUlui || op == `CUbeq || op == `CUbne || op == `CUslti || op == `CUsltiu || op == `CUj || op == `CUjal)?1'b1:1'b0;
assign ALUControl[2] = (opfunc == `CUand || opfunc == `CUor || opfunc == `CUxor || opfunc == `CUnor || opfunc == `CUsra || opfunc == `CUsrav || opfunc == `CUjr || op == `CUandi || op == `CUori || op == `CUxori || op == `CUlui || op == `CUbeq || op == `CUbne || op == `CUj || op == `CUjal)?1'b1:1'b0;
assign ALUControl[1] = (opfunc == `CUsub || opfunc == `CUsubu || opfunc == `CUxor || opfunc == `CUnor || opfunc == `CUsll || opfunc == `CUsrl || opfunc == `CUsllv || opfunc == `CUsrlv || opfunc == `CUjr || op == `CUxori || op == `CUlui || op == `CUbne || op == `CUj || op == `CUjal)?1'b1:1'b0;
assign ALUControl[0] = (opfunc == `CUaddu || opfunc == `CUsubu || opfunc == `CUor || opfunc == `CUnor || opfunc == `CUsltu || opfunc == `CUsltiu || opfunc == `CUsrl || opfunc == `CUsrlv || opfunc == `CUjr || op == `CUori || op == `CUlui || op == `CUbeq || op == `CUj || op == `CUjal)?1'b1:1'b0;
assign Branch[1] = (op == `CUj || op == `CUjal || opfunc == `CUjr)?1'b1:1'b0;
assign Branch[0] = (opfunc == `CUjr || (op == `CUbeq && zero == 1'b1) || (op == `CUbne && zero == 1'b1))?1'b1:1'b0;
assign ALUSrcA = (opfunc == `CUsll || opfunc == `CUsrl || opfunc == `CUsra)?1'b1:1'b0;
assign ALUSrcB = (op == `CUaddi || op == `CUaddiu || op == `CUandi || op == `CUori || op == `CUxori || op == `CUlui || op == `CUlw || op == `CUsw || op == `CUslti || op == `CUsltiu)?1'b1:1'b0;
assign RegDst = (opfunc == `CUadd || opfunc == `CUaddu || opfunc == `CUsub || opfunc == `CUsubu || opfunc == `CUand || opfunc == `CUor || opfunc == `CUxor || opfunc == `CUnor || opfunc == `CUslt || opfunc == `CUsltu || opfunc == `CUsll || opfunc == `CUsrl || opfunc == `CUsra || opfunc == `CUsllv || opfunc == `CUsrlv || opfunc == `CUsrav || opfunc == `CUjr || opfunc == `CUmul)?1'b1:1'b0;
assign Extend = (op == `CUaddi || op == `CUaddiu || op == `CUlw || op == `CUsw || op == `CUbeq || op == `CUbne || op == `CUslti || op == `CUsltiu)?1'b1:1'b0;
assign PCtoReg = (op == `CUjal)?1'b1:1'b0;

endmodule