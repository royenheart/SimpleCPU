`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RoyenHeart、Ruoxuan Wang
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
    clk, rst,
    op, func, zero, MemtoReg, MemWrite, RegWrite, ALUControl, Branch,
    ALUSrcA, ALUSrcB, RegDst, Extend, PCtoReg, PCWre, IRWre, InstrMemRW
);

input clk;
input rst;
// 6位操作数输入
input op;
// 6位功能数输入，与op共同决定输出
input func;
// ALU Zero信号，用于判断条件跳转语句是否成立
// 只在跳转指令时需要进行判断
input zero;
//内存读控制
output MemtoReg;
//内存写控制
output MemWrite;
output RegWrite;
// 5位ALU功能选择
output ALUControl;
output Branch;
output ALUSrcA;
output ALUSrcB;
output RegDst;
output Extend;
output PCtoReg;
output PCWre;
output IRWre;
output InstrMemRW;
   
wire clk;
wire rst;
wire [5:0] op;
wire [5:0] func;
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

wire [11:0] opfunc;
reg [3:0] State, NextState;

assign opfunc = {op,func};
initial begin
    State = `InitState;
    NextState = 4'b0000;
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

//状态机
always @(posedge clk) begin
    if(rst == 1'b0) begin
        State <= `IF;
    end
    else begin
        State <= NextState;
    end
end

always @(*) begin
    case(State)
        `InitState: NextState <= `IF;
        `IF: NextState <= `ID;
        `ID:begin
            case(op)
                `CURcal:begin
                    case(opfunc)
                        `CUadd, `CUaddu, `CUsub, `CUsubu, `CUand, `CUor, `CUxor, `CUnor, `CUslt, `CUsltu, `CUsll, 
                            `CUsrl, `CUsra, `CUsllv, `CUsrlv, `CUsrav: NextState <= `EXER;
                        `CUjr: NextState <= `IF;
                    endcase
                end
                `CUaddi, `CUaddiu, `CUandi, `CUori, `CUxori, `CUlui, `CUslti, `CUsltiu: NextState <= `EXEI;
                `CUbeq, `CUbne: NextState <= `EXEB;
                `CUlw, `CUsw: NextState <= `EXEW;
                `CUjal: NextState <= `WBJAR;
                `CUj: NextState <= `IF;
                `CUmulop: NextState <= `EXER;
            endcase
        end
        `EXER: NextState <= `WBR;
        `WBR: NextState <= `IF;
        `EXEI: NextState <= `WBI;
        `WBI: NextState <= `IF;
        `EXEB: NextState <= `IF;
        `EXEW:begin
            case(op)
                `CUlw: NextState <= `MEMLW;
                `CUsw: NextState <= `MEMSW;
            endcase
        end
        `MEMLW: NextState <= `WBLW;
        `WBLW: NextState <= `IF;
        `MEMSW: NextState <= `IF;
        `WBJAR: NextState <= `IF;
        default: NextState <= `IF;
    endcase
end


always @(*) begin
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

    Branch[1] <= ((State == `ID && op == `CUj) || (State == `WBJAR) || (State == `ID && opfunc == `CUjr))?1'b1:1'b0;
    Branch[0] <= ((State == `ID && opfunc == `CUjr) || (State == `EXEB && zero == 1'b1))?1'b1:1'b0;

    ALUSrcA <= (State == `EXER && (opfunc == `CUsll || opfunc == `CUsrl || opfunc == `CUsra))?1'b1:1'b0;
    ALUSrcB <= (State == `EXEI || State == `EXEW)?1'b1:1'b0;

    RegDst <= (State == `EXER)?1'b1:1'b0;
    Extend <= ((State ==`EXEI && (op == `CUaddi || op == `CUaddiu || op == `CUslti || op == `CUsltiu)) || (State == `EXEW) || (State == `EXEB) )?1'b1:1'b0;
    PCtoReg <= (State == `WBJAR)?1'b1:1'b0;

    PCWre <= (NextState == `IF && State != `InitState)?1'b1:1'b0;
    IRWre <= (State == `IF)?1'b1:1'b0;
    InstrMemRW <= (State == `IF)?1'b1:1'b0;
end

endmodule