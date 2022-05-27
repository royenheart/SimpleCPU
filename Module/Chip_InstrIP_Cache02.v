`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: Chip_InstrIP_Cache02
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 多周期CPU+高速缓存（4路组相联32槽）
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// 芯片，集成各部件和数据通路，继承block memory generator的IP核进行指令的读取
// 多周期+高速缓存，Cache设计2
module Chip_InstrIP_Cache02(
    clk, rst,  
    instrExp, PCExp, IPCExp, ExtendImmExp, MemtoRegExp, MemWriteExp, RegWriteExp, 
    ALUControlExp, BranchExp, ALUSrcAExp, ALUSrcBExp, RegDstExp, ExtendExp,
    PCtoRegExp, A3TempExp, A3Exp, RD1Exp, RD2Exp, SrcAExp, SrcBExp, ZeroExp,
    ALUResultExp, DataMemReadExp, WD3TempExp, WD3Exp
);

// 时钟信号外部输入
input clk;
// 复位信号外部输入
input rst;
// 暴露数据以便进行调试
output [31:0] instrExp;
output [31:0] PCExp;
output [31:0] IPCExp;
output [31:0] ExtendImmExp;
output MemtoRegExp;
output MemWriteExp;
output RegWriteExp;
output [4:0] ALUControlExp;
output [1:0] BranchExp;
output ALUSrcAExp;
output ALUSrcBExp;
output RegDstExp;
output ExtendExp;
output PCtoRegExp;
output [4:0] A3TempExp;
output [4:0] A3Exp;
output [31:0] RD1Exp;
output [31:0] RD2Exp;
output [31:0] SrcAExp;
output [31:0] SrcBExp;
output ZeroExp;
output [31:0] ALUResultExp;
output [31:0] DataMemReadExp;
output [31:0] WD3TempExp;
output [31:0] WD3Exp;

wire clk;
wire rst;
wire [31:0] instrExp;
wire [31:0] PCExp;
wire [31:0] IPCExp;
wire [31:0] ExtendImmExp;
wire MemtoRegExp;
wire MemWriteExp;
wire RegWriteExp;
wire [4:0] ALUControlExp;
wire [1:0] BranchExp;
wire ALUSrcAExp;
wire ALUSrcBExp;
wire RegDstExp;
wire ExtendExp;
wire PCtoRegExp;
wire [4:0] A3TempExp;
wire [4:0] A3Exp;
wire [31:0] RD1Exp;
wire [31:0] RD2Exp;
wire [31:0] SrcAExp;
wire [31:0] SrcBExp;
wire ZeroExp;
wire [31:0] ALUResultExp;
wire [31:0] DataMemReadExp;
wire [31:0] WD3TempExp;
wire [31:0] WD3Exp;

// 命中
wire dataHit;

// 指令
wire [31:0] instr;
wire [31:0] IRinstr;

// 当前需要的指令地址
wire [31:0] PC;
// 经选择后的指令地址（送进指令地址寄存器）
wire [31:0] IPC;

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
wire RegDst;
wire Extend;
wire PCtoReg;
wire PCWre;
wire IRWre;
wire InstrMemRW;
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
// 从寄存器中得到的RD1
wire [31:0] RD1Reg;
// 从寄存器中得到的RD2
wire [31:0] RD2Reg;
// 经过选择后的SrcA
wire [31:0] SrcA;
// 经过选择后的SrcB
wire [31:0] SrcB;
// ALU的Zero信号
wire Zero;
// ALU运算结果
wire [31:0] ALUResult;
wire [31:0] ALUResultReg;
// DataMem读出数据
wire [31:0] DataMemRead;
wire [31:0] DataMemReadReg;
// 初次选择的WD3值
wire [31:0] WD3Temp;
// 二次选择的WD3值
wire [31:0] WD3;

/////////
//数据暴露
/////////

assign instrExp = IRinstr;
assign IPCExp = IPC;
assign PCExp = PC;
assign ExtendImmExp = ExtendImm;
assign MemtoRegExp = MemtoReg;
assign MemWriteExp = MemWrite;
assign RegWriteExp = RegWrite;
assign ALUControlExp = ALUControl;
assign BranchExp = Branch;
assign ALUSrcAExp = ALUSrcA;
assign ALUSrcBExp = ALUSrcB;
assign RegDstExp = RegDst;
assign ExtendExp = Extend;
assign PCtoRegExp = PCtoReg;
assign A3TempExp = A3Temp;
assign A3Exp = A3;
assign RD1Exp = RD1Reg;
assign RD2Exp = RD2Reg;
assign SrcAExp = SrcA;
assign SrcBExp = SrcB;
assign ZeroExp = Zero;
assign ALUResultExp = ALUResultReg;
assign DataMemReadExp = DataMemReadReg;
assign WD3TempExp = WD3Temp;
assign WD3Exp = WD3;

//////////////
//数据暴露-End
//////////////

//////////
//数据通路
//////////

assign SrcA = (ALUSrcA == 1'b1)?IRinstr[10:6]:RD1Reg;
assign SrcB = (ALUSrcB == 1'b1)?ExtendImm:RD2Reg;

assign A3Temp = (RegDst == 1'b1)?IRinstr[15:11]:IRinstr[20:16];
assign A3 = (PCtoReg == 1'b1)?5'b11111:A3Temp;

assign WD3Temp = (MemtoReg == 1'b1)?DataMemReadReg:ALUResultReg;
assign WD3 = (PCtoReg == 1'b1)?(PC+3'b100):WD3Temp;

/////////////
//数据通路结束
/////////////

/////////////
//模块部件引用
/////////////

// PC - Start //

PC u_pc(
    .clk        (clk),
    .rst        (rst),
    .PCWre      (PCWre),
    .NextPC     (IPC),
    .CurPC      (PC)
);

// PC - End //


// PCAddr - Start //

// used to select the PC
PCAddr u_pcaddr(
    .clk        (clk),
    .rst        (rst),
    .Branch     (Branch),
    .CurPC      (PC),
    .ExtendImm  (ExtendImm),
    .address    (IRinstr[25:0]),
    .RS         (RD1),
    .NextPC     (IPC)
);

// PCAddr - End //


// InstrMem - Start //

InstrMemROM u_instrmemrom (
    .A              (PC [31:0]),
    .InstrMemRW     (InstrMemRW),
    .RD             (instr [31:0])
);

// InstrMem - End //


// IR - Start //

IR u_IR (
    .clk        (clk),
    .IRWre      (IRWre),
    .InstrIn    (instr),
    .InstrOut   (IRinstr)
);

// IR - End //


// CU - Start //

CU u_cu (
    .clk        (clk),
    .rst        (rst),
    .op         (IRinstr[31:26]),
    .func       (IRinstr[5:0]),
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
    .PCtoReg    (PCtoReg),
    .PCWre      (PCWre),
    .IRWre      (IRWre),
    .InstrMemRW (InstrMemRW)
);

// CU - End //


// Extend - Start //

Extend u_extend (
    .ExtSel     (Extend),
    .immediate  (IRinstr[15:0]),
    .Extendout  (ExtendImm)
);

// Extend - End //


// RegFiles - Start //

RegFiles u_regfiles(
    .clk    (clk),
    .A1     (IRinstr[25:21]),
    .A2     (IRinstr[20:16]),
    .A3     (A3),
    .WD3    (WD3),
    .WE3    (RegWrite),
    .RD1    (RD1),
    .RD2    (RD2)
);

// RegFiles - End //


// ResultTempReg_RegData1 - Start  //

ResultTempReg u_RegData1 (
    .clk       (clk),
    .DataIn    (RD1),
    .DataOut   (RD1Reg)
);

// ResultTempReg_RegData1 - End //


// ResultTempReg_RegData2 - Start  //

ResultTempReg u_RegData2 (
    .clk       (clk),
    .DataIn    (RD2),
    .DataOut   (RD2Reg)
);

// ResultTempReg_RegData2 - End //


// ALU - Start //

ALU u_alu (
    .op   (ALUControl),
    .A    (SrcA),
    .B    (SrcB),
    .out  (ALUResult),
    .zero (Zero)
);

// ALU - End //


// ResultTempReg_AluResult - Start  //

ResultTempReg u_AluResult (
    .clk       (clk),
    .DataIn    (ALUResult),
    .DataOut   (ALUResultReg)
);

// ResultTempReg_AluResult - End //


// Cache02Data_wrapper - Start //

Cache02Data_wrapper u_cachedata02(
    .A   (ALUResultReg),
    .WD  (RD2Reg),
    .clk (clk),
    .MemWrite  (MemWrite),
    .DataMemRead  (DataMemRead),
    .hit (dataHit)
);

// Block Ram由于读出数据有时钟延迟，与我们的设计不能匹配，因此不采用
// DataMemBRAM u_datamem_bram(
//     .A   (ALUResultReg),
//     .WD  (RD2Reg),
//     .clk (clk),
//     .WE  (MemWrite),
//     .RD  (DataMemRead)
// );

// Cache02Data_wrapper - End //

// ResultTempReg_MemData - Start  //

ResultTempReg u_MemData (
    .clk        (clk),
    .DataIn    (DataMemRead),
    .DataOut   (DataMemReadReg)
);

// ResultTempReg_RegData2 - End //


/////////////////
//模块部件引用结束
/////////////////

endmodule