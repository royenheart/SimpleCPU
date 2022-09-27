`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RoyenHeart、Ruoxuan Wang
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: CU_Pipeline
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

// 根据单个指令的当前、下一个状态、op和opfunc确定单个指令的控制信号
module Signal_Gen(
    trigger,
    State, NextState,
    op, opfunc, zero, MemtoReg, MemWrite, RegWrite, ALUControl, Branch,
    ALUSrcA, ALUSrcB, RegDst, Extend, PCtoReg, PCWre, IRWre, InstrMemRW
);

input trigger;
input State;
input NextState;
input op;
input opfunc;
input zero;
output ALUControl;
output ALUSrcA;
output ALUSrcB;
output RegDst;
output Extend;
output MemWrite;
output Branch;
output MemtoReg;
output PCtoReg;
output RegWrite;
output PCWre;
output IRWre;
output InstrMemRW;

wire trigger;
wire [3:0] State;
wire [3:0] NextState;
wire [5:0] op;
wire [11:0] opfunc;
wire zero;
reg MemtoReg;
reg MemWrite;
reg RegWrite;
reg [4:0] ALUControl;
reg [1:0] Branch;
reg ALUSrcA;
reg ALUSrcB;
reg RegDst;
reg Extend;
reg PCtoReg;
reg PCWre;
reg IRWre;
reg InstrMemRW;

initial begin
    MemtoReg = 1'b0;
    MemWrite = 1'b0;
    RegWrite = 1'b0;
    ALUControl = 5'b00000;
    Branch = 2'b00;
    ALUSrcA = 1'b0;
    ALUSrcB = 1'b0;
    RegDst = 1'b0;
    Extend = 1'b0;
    PCtoReg = 1'b0;
    PCWre = 1'b0;
    IRWre = 1'b0;
    InstrMemRW = 1'b0;
end

always @(trigger)
begin
    MemtoReg <= (State == `WBLW)?1'b1:1'b0;
    MemWrite <= (State == `MEMSW)?1'b1:1'b0;
    RegWrite <= (State == `WBR || State == `WBI || State == `WBLW || State == `WBJAR)?1'b1:1'b0;

    if(State == `EXER || State == `EXEI || State == `EXEB || State == `EXEW) begin
        ALUControl[4] <= (opfunc == `CUjr || opfunc == `CUmul || op == `CUj || op == `CUjal)?1'b1:1'b0;
        ALUControl[3] <= (opfunc == `CUslt || opfunc == `CUsltu || opfunc == `CUsll || opfunc == `CUsrl || opfunc == `CUsra || opfunc == `CUsllv || opfunc == `CUsrlv || opfunc == `CUsrav || opfunc == `CUjr || op == `CUlui || op == `CUbeq || op == `CUbne || op == `CUslti || op == `CUsltiu || op == `CUj || op == `CUjal)?1'b1:1'b0;
        ALUControl[2] <= (opfunc == `CUand || opfunc == `CUor || opfunc == `CUxor || opfunc == `CUnor || opfunc == `CUsra || opfunc == `CUsrav || opfunc == `CUjr || op == `CUandi || op == `CUori || op == `CUxori || op == `CUlui || op == `CUbeq || op == `CUbne || op == `CUj || op == `CUjal)?1'b1:1'b0;
        ALUControl[1] <= (opfunc == `CUsub || opfunc == `CUsubu || opfunc == `CUxor || opfunc == `CUnor || opfunc == `CUsll || opfunc == `CUsrl || opfunc == `CUsllv || opfunc == `CUsrlv || opfunc == `CUjr || op == `CUxori || op == `CUlui || op == `CUbne || op == `CUj || op == `CUjal)?1'b1:1'b0;
        ALUControl[0] <= (opfunc == `CUaddu || opfunc == `CUsubu || opfunc == `CUor || opfunc == `CUnor || opfunc == `CUsltu || opfunc == `CUsltiu || opfunc == `CUsrl || opfunc == `CUsrlv || opfunc == `CUjr || op == `CUori || op == `CUlui || op == `CUbeq || op == `CUj || op == `CUjal)?1'b1:1'b0;
    end

    // 是否需要

    Branch[1] <= ((State == `ID && op == `CUj) || (State == `WBJAR) || (State == `ID && opfunc == `CUjr))?1'b1:1'b0;
    Branch[0] <= ((State == `ID && opfunc == `CUjr) || (State == `EXEB && zero == 1'b1))?1'b1:1'b0;

    ALUSrcA <= (State == `EXER && (opfunc == `CUsll || opfunc == `CUsrl || opfunc == `CUsra))?1'b1:1'b0;
    ALUSrcB <= (State == `EXEI || State == `EXEW)?1'b1:1'b0;

    RegDst <= (State == `EXER)?1'b1:1'b0;
    Extend <= ((State ==`EXEI && (op == `CUaddi || op == `CUaddiu || op == `CUslti || op == `CUsltiu)) || (State == `EXEW) || (State == `EXEB) )?1'b1:1'b0;
    PCtoReg <= (State == `WBJAR)?1'b1:1'b0;

    // -- 是否在顶层模块，流水线一个阶段结束后再进行 -- //

    PCWre <= (NextState == `IF && State != `InitState)?1'b1:1'b0;
    IRWre <= (State == `IF)?1'b1:1'b0; // 是否不需要
    InstrMemRW <= (State == `IF)?1'b1:1'b0; // 是否不需要

    // -- 是否在顶层模块，流水线一个阶段结束后再进行 -- //
end

endmodule