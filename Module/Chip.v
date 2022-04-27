`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽、王若譞
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: Chip
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

// 芯片，集成各部件和数据通路，用于前仿验证功能
module Chip(
    // 预留部分CPU接口以便之后的扩展和综合仿真
    input wire [31:0] control01,
    output wire [31:0] control02 
);

// 信号发生器（clk） - Start //

reg clk;
parameter PERIOD  = 10;

initial 
begin
    clk = 1'b0;
    forever 
    begin
        #(PERIOD/2) clk = ~clk;  
    end
end

// 信号发生器 - End //

// 指令
wire [31:0] instr;
// 当前需要的指令地址
wire [31:0] IPC;
// 经选择后的指令地址（送进指令地址寄存器）
wire [31:0] PC;
// 扩展后的立即数
wire [31:0] ExtendImm;
//////////////////////////
//CU控制单元延伸出的控制信号
//////////////////////////
wire MemtoReg;
wire MemWrite;
wire RegWrite;
wire [4:0] ALUControl;
wire [1:0] Branch;
wire ALUSrcA;
wire ALUSrcB;
wire [4:0] RegDst;
wire Extend;
wire PCtoReg;
//////////////////////////
//控制信号结束
//////////////////////////
// 初次判断的A3寄存器地址
wire [4:0] A3Temp;
// 二次判断的A3寄存器地址（和全1即$31寄存器进行选择）
wire [4:0] A3;
// 初始RD1
wire [31:0] RD1;
// 初始RD2
wire [31:0] RD2;
// 经过选择后的SrcA
wire [31:0] SrcA;
// 经过选择后的SrcB
wire [31:0] SrcB;
// ALU的Zero信号
wire Zero;
// ALU运算结果
wire [31:0] ALUResult;
// DataMem读出数据
wire [31:0] DataMemRead;
// 初次选择的WD3值
wire [31:0] WD3Temp;
// 二次选择的WD3值
wire [31:0] WD3;
// PC + 4
wire [31:0] PCPlus4;
// PC + 4 + (sign-extend)immediate<<2
wire [31:0] PCPlusExtend;
// PC = (PC+4)[31..28],address,0,0
wire [31:0] PCPlusAddr;
// PC = rs，直接从RD1线延伸出来即可

//////////
//数据通路
//////////

assign SrcA = (ALUSrcA == 1'b1)?instr[10:6]:RD1;
assign SrcB = (ALUSrcB == 1'b1)?ExtendImm:RD2;

assign A3Temp = (RegDst == 1'b1)?instr[15:11]:instr[20:16];
assign A3 = (PCtoReg == 1'b1)?5'b11111:A3Temp;

assign WD3Temp = (MemtoReg == 1'b1)?DataMemRead:ALUResult;
assign WD3 = (PCtoReg == 1'b1)?PCPlus4:WD3Temp;

// PC + 4
assign PCPlus4 = IPC + 3'b100;
// PC + 4 + (sign-extend)immediate<<2
assign PCPlusExtend = PCPlus4 + (ExtendImm << 2);
// PC = (PC+4)[31..28],address,0,0
assign PCPlusAddr = {PCPlus4[31:28], instr[25:0], 2'b00};

assign PC = (Branch == 2'b00)?PCPlus4:((Branch==2'b01)?PCPlusExtend:((Branch == 2'b10)?PCPlusAddr:RD1));

/////////////
//数据通路结束
/////////////

/////////////
//模块部件引用
/////////////

// ALU - Start //

ALU u_alu (
    .op   (ALUControl),
    .A    (SrcA),
    .B    (SrcB),
    .out  (ALUResult),
    .zero (Zero)
);

// ALU - End //

// CU - Start //

CU u_cu (
    .op         (instr[31:26]),
    .func       (instr[5:0]),
    .zero       (Zero),
    .MemtoReg   (MemtoReg),
    .MemWrite   (MemWrite),
    .RegWrite   (RegWrite),
    .ALUControl (ALUControl),
    .Branch     (Branch),
    .ALUSrcA    (ALUSrcA),
    .ALUSrcB    (ALUSrcB),
    .RegDst     (RegDst),
    .Extend     (Extend),
    .PCtoReg    (PCtoReg)
);

// CU - End //

// Extend - Start //

Extend u_extend (
    .ExtSel     (Extend),
    .immediate  (instr[15:0]),
    .Extendout  (ExtendImm)
);

// Extend - End //

// DataMem - Start //

DataMem u_datamem(
    .A   (ALUResult),
    .WD  (RD2),
    .clk (clk),
    .WE  (MemWrite),
    .RD  (DataMemRead)
);

// DataMem - End //

// InstrMem - Start //

InstrMem u_instrmem(
    .A  (IPC),
    .RD (instr)
);

// InstrMem - End //

// RegFiles - Start //

RegFiles u_regfiles(
    .A1     (instr[25:21]),
    .A2     (instr[20:16]),
    .A3     (A3),
    .WD3    (WD3),
    .clk    (clk),
    .WE3    (RegWrite),
    .RD1    (RD1),
    .RD2    (RD2)
);

// RegFiles - End //

// PCAddr - Start //

PCAddr u_pcaddr(
    .PC     (PC),
    .clk    (clk),
    .IPC    (IPC)
);

// PCAddr - End //

/////////////////
//模块部件引用结束
/////////////////

endmodule