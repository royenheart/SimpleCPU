`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽、王若譞
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
`include "../headers/DefinePipeline.vh"

// 流水线CPU:Cu控制单元
// 使用两级流水线
module CU_Pipeline(
    clk, rst,
    op, func, zero, MemtoReg, MemWrite, RegWrite, ALUControl, Branch,
    ALUSrcA, ALUSrcB, RegDst, Extend, PCtoReg, PCWre, IRWre, InstrMemRW
);

//---各阶段所需要的CU控制信号Start---//
//---控制信号需要分成两组对两个指令进行计算---//

//--执行阶段Start--//

// 5位ALU功能选择
output ALUControl;
// 选择rs还是shamt
output ALUSrcA;
// 选择rt还是immediate
output ALUSrcB;
// 选择写入寄存器是rt还是rd
output RegDst;
// 选择使用哪种扩展方式，注意寄存器放在Sign Extend前面
output Extend;

//--执行阶段End--//

//--存储器访问阶段Start--//

// 内存写控制
output MemWrite;
// 分支控制
output Branch;

//--存储器访问阶段End--//

//--写回阶段Start--//

// 内存读控制
output MemtoReg;
// 将PC+4写入寄存器组（PC+4线路需要再新增两个寄存器）
output PCtoReg;
// 是否需要写寄存器
output RegWrite;

//--写回阶段End--//

//---各阶段所需要的CU控制信号End---//

input clk;
input rst;
// 6位操作数输入
input op;
// 6位功能数输入，与op共同决定输出
input func;
// ALU Zero信号，用于判断条件跳转语句是否成立，只在跳转指令时需要进行判断
input zero;

// -- 决定下在哪个寄存器进行控制 -- //

// PCWre考虑顺序入，乱序出的情况，去最后进的指令的下一个指令？

// 判断此时PC是否需要读入选择器选择后的数据，在执行阶段
output PCWre;
// 控制取值阶段是否需要取值
output IRWre;
// 控制指令存储器是否根据当前地址写出地址
// output InstrMemRW;

// -- 决定下在哪个寄存器进行控制 -- //

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

// 触发器，引起指令状态改变
reg triggers[1:0];
// 控制信号触发器，引起各个指令控制信号发生改变
reg SigTriggers[1:0];

// 指令存储数量
// 00表示一个都没有，01表示第一个指令存在，10表示第二个指令存在，11表示都存在
reg [1:0] InstrNumber;
// 指令存储
reg [5:0] ops[1:0];
reg [11:0] opFuncs [1:0];
// 指令当前执行阶段（对两个指令进行处理）
reg [3:0] State[1:0], NextState[1:0];
// 流水线当前阶段
reg [1:0] PipStage, PipNextStage;
// 选择将控制信号送至哪个寄存器（共三个，为各个阶段的寄存器）


assign opfunc = {op,func};

initial begin
    State = `InitState;
    NextState = `IF;
    PipStage = `PipInitStage;
    PipNextStage = `PipInStage;
    triggers[0] = 1'b0;
    triggers[1] = 1'b0;
    SigTriggers[0] = 1'b0;
    SigTriggers[1] = 1'b1;
    InstrNumber = 2'b00;
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

// Instr sets

always @(posedge clk)
begin
    case(PipStage)
        `PipInitStage: InstrNumber <= 2'b00;
        `PipInStage:
        begin
            case(InstrNumber)
                2'b00: begin
                ops[0] <= op;
                opFuncs[0] <= {op, func};
                InstrNumber <= 2'b01;
                end
                2'b01: begin
                ops[1] <= op;
                opFuncs[1] <= {op, func};
                InstrNumber <= 2'b11;
                end
            endcase
        end
        `PipOutStage:
        begin
            // 若有一个指令状态回到最初状态（判断NextState是否为IF？），则InstrNumber将对应位置的1至为0，同时触发状态改变。
            if (NextState[0] == `IF) begin
                InstrNumber[0] <= 1'b0;
            end
            if (NextState[1] == `IF) begin
                InstrNumber[1] <= 1'b0;
            end
        end
    endcase
end

// Pipeline state machine

always @(posedge clk)
begin
    if (!rst) begin
        PipStage <= `PipInitStage;
    end
    else begin
        PipStage <= PipNextStage;
    end
end

// Pipeline state change

always @(*) begin
    case(PipStage)
        `PipInitStage: PipNextStage <= `PipInStage;
        `PipInStage:
        begin
            case(InstrNumber)
                2'b11: PipNextStage <= `PipKeepStage;
            endcase
        end
        `PipKeepStage:
        begin
            // 若一个指令状态回到初值，则进入写出阶段，看NextState
            if(NextState[0] == `IF || NextState[1] == `IF) begin
                PipNextStage <= `PipOutStage;
            end
        end
        `PipOutStage:
        begin
            // 若全部存储指令数量为0，则进入写入阶段，看InstrNumber
            if (InstrNumber == 2'b00) begin
                PipNextStage <= `PipInStage;
            end
        end
    endcase
end

// Instr state machine
always @(posedge clk) begin
    if(!rst) begin
        State <= `InitState;
    end
    else begin
        State <= NextState;
    end
end

// Instr state change

// 连接NextState
wire [3:0] next[1:0];

InstrStateChange u_instr_state_change_01(
    .trigger    (triggers[0]),
    .State      (State[0]),
    .op         (ops[0]),
    .opfunc     (opFuncs[0]),
    .NextState  (next[0])
);

InstrStateChange u_instr_state_change_02(
    .trigger    (triggers[1]),
    .State      (State[1]),
    .op         (ops[1]),
    .opfunc     (opFuncs[1]),
    .NextState  (next[1])
);

always @(*) begin
    // 只有当指令存在时才发生状态改变
    case(InstrNumber[0:0])
        1'b1: begin
            triggers[0] <= ~triggers[0];
        end
    endcase
    case(InstrNumber[1:1])
        1'b1: begin
            triggers[1] <= ~triggers[1];
        end
    endcase
end

always @(next[0]) begin
    NextState[0] <= next[0];
end

always @(next[1]) begin
    NextState[1] <= next[1];
end

// generate signals according to current state and func

reg MemtoRegTemp[1:0];
reg MemWriteTemp[1:0];
reg RegWriteTemp[1:0];
reg [4:0] ALUControlTemp[1:0];
reg [1:0] BranchTemp[1:0];
reg ALUSrcATemp[1:0];
reg ALUSrcBTemp[1:0];
reg RegDstTemp[1:0];
reg ExtendTemp[1:0];
reg PCtoRegTemp[1:0];
reg PCWreTemp[1:0];
reg IRWreTemp[1:0];
reg InstrMemRWTemp[1:0];

Signal_Gen u_signal_gen_01(
    .trigger    (SigTriggers[0]),
    .State      (State[0]),
    .NextState  (NextState[0]),
    .op         (ops[0]),
    .opfunc     (opFuncs[0]),
    .zero       (zero),
    .ALUControl (ALUControlTemp[0]),
    .ALUSrcA    (ALUSrcATemp[0]),
    .ALUSrcB    (ALUSrcBTemp[0]),
    .RegDst     (RegDstTemp[0]),
    .Extend     (ExtendTemp[0]),
    .MemWrite   (MemWriteTemp[0]),
    .Branch     (BranchTemp[0]),
    .MemtoReg   (MemtoRegTemp[0]),
    .PCtoReg    (PCtoRegTemp[0]),
    .RegWrite   (RegWriteTemp[0]),
    .PCWre      (PCWreTemp[0]),
    .IRWre      (IRWreTemp[0]),
    .InstrMemRW (InstrMemRWTemp[0])
);

Signal_Gen u_signal_gen_02(
    .trigger    (SigTriggers[1]),
    .State      (State[1]),
    .NextState  (NextState[1]),
    .op         (ops[1]),
    .opfunc     (opFuncs[1]),
    .zero       (zero),
    .ALUControl (ALUControlTemp[1]),
    .ALUSrcA    (ALUSrcATemp[1]),
    .ALUSrcB    (ALUSrcBTemp[1]),
    .RegDst     (RegDstTemp[1]),
    .Extend     (ExtendTemp[1]),
    .MemWrite   (MemWriteTemp[1]),
    .Branch     (BranchTemp[1]),
    .MemtoReg   (MemtoRegTemp[1]),
    .PCtoReg    (PCtoRegTemp[1]),
    .RegWrite   (RegWriteTemp[1]),
    .PCWre      (PCWreTemp[1]),
    .IRWre      (IRWreTemp[1]),
    .InstrMemRW (InstrMemRWTemp[1])
);

always @(*) begin
    // 只有当指令存在时才发生控制信号的改变
    case(InstrNumber[0:0])
        1'b1: begin
            SigTriggers[0] <= ~SigTriggers[0];
        end
    endcase
    case(InstrNumber[1:1])
        1'b1: begin
            SigTriggers[1] <= ~SigTriggers[1];
        end
    endcase
end

always @(ALUControlTemp[0] or ALUControlTemp[1]) begin
    if(State[0] == `EXER || State[0] == `EXEI || State[0] == `EXEB || State[0] == `EXEW) begin
        ALUControl <= ALUControlTemp[0];
    end
    if(State[1] == `EXER || State[1] == `EXEI || State[1] == `EXEB || State[1] == `EXEW) begin
        ALUControl <= ALUControlTemp[1];
    end
end

always @(ALUSrcATemp[0] or ALUSrcATemp[1]) begin
    ALUSrcA <= ALUSrcATemp[0] | ALUSrcATemp[1];
end

always @(ALUSrcBTemp[0] or ALUSrcBTemp[1]) begin
    ALUSrcB <= ALUSrcBTemp[0] | ALUSrcBTemp[1];
end

always @(RegDstTemp[0] or RegDstTemp[1]) begin
    RegDst <= RegDstTemp[0] | RegDstTemp[1];
end

always @(ExtendTemp[0] or ExtendTemp[1]) begin
    Extend <= ExtendTemp[0] | ExtendTemp[1];
end

always @(MemWriteTemp[0] or MemWriteTemp[1]) begin
    MemWrite <= MemWriteTemp[0] | MemWriteTemp[1];
end

always @(BranchTemp[0] or BranchTemp[1]) begin
    Branch <= BranchTemp[0] | BranchTemp[1];
end

always @(MemtoRegTemp[0] or MemtoRegTemp[1]) begin
    MemtoReg <= MemtoRegTemp[0] | MemtoRegTemp[1];
end

always @(PCtoRegTemp[0] or PCtoRegTemp[1]) begin
    PCtoReg <= PCtoRegTemp[0] | PCtoRegTemp[1];
end

always @(RegWriteTemp[0] or RegWriteTemp[1]) begin
    RegWrite <= RegWriteTemp[0] | RegWriteTemp[1];
end

always @(PCWreTemp[0] or PCWreTemp[1]) begin
    PCWre <= PCWreTemp[0] | PCWreTemp[1];
end

always @(IRWreTemp[0] or IRWreTemp[1]) begin
    IRWre <= IRWreTemp[0] | IRWreTemp[1];
end

always @(InstrMemRWTemp[0] or InstrMemRWTemp[1]) begin
    InstrMemRW <= InstrMemRWTemp[0] | InstrMemRWTemp[1];
end

endmodule