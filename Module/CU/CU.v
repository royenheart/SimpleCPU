`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: ALU
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

module CU(
    // 6位操作数输入
    input reg [5:0] op,
    // 6位功能数输入，与op共同决定输出
    input reg [5:0] func,
    // ALU Zero信号，用于判断条件跳转语句是否成立
    // 只在跳转指令时需要进行判断
    input reg zero,
    output reg MemtoReg,
    output reg MemWrite,
    output reg RegWrite,
    // 5位ALU功能选择
    output reg [4:0] ALUControl,
    output reg [1:0] Branch,
    output reg ALUSrcA,
    output reg ALuSrcB,
    output reg [4:0] RegDst,
    output reg Extend,
    output reg PCtoReg
);

// R型数据操作类
always@(*)
begin
    case({op, func})
        12'b000000100000:
        begin
            // add
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00000;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            // 不使用立即数
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000100001:
        begin
            // addu
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00001;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000100010:
        begin
            // sub
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00010;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000100011:
        begin
            // subu
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00011;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000100100:
        begin
            // and
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00100;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000100101:
        begin
            // or
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00101;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000100110:
        begin
            // xor
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00110;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000100111:
        begin
            // nor
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00111;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000101010:
        begin
            // slt
            // 判断错误ALU输出0，判断正确ALU输出1
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01000;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000101011:
        begin
            // sltu
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01001;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000000000:
        begin
            // sll
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01010;
            Branch <= 2'b00;
            ALUSrcA <= 1'b1;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000000010:
        begin
            // srl
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01011;
            Branch <= 2'b00;
            ALUSrcA <= 1'b1;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000000011:
        begin
            // sra
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01100;
            Branch <= 2'b00;
            ALUSrcA <= 1'b1;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000000100:
        begin
            // sllv
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01010;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000000110:
        begin
            // srlv
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01011;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        12'b000000000111:
        begin
            // srav
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01100;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b1;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
    endcase
end

// I型数据操作类
always@(*)
begin
    case(op)
        6'b001000:
        begin
            // addi
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00000;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b1;
            PCtoReg <= 1'b0;
        end
        6'b001001:
        begin
            // addi
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00000;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        6'b001100:
        begin
            // andi
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00100;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        6'b001101:
        begin
            // ori
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00101;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        6'b001110:
        begin
            // xori
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00110;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        6'b001111:
        begin
            // lui
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01010;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        6'b100011:
        begin
            // lw
            MemtoReg <= 1'b1;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b00000;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b1;
            PCtoReg <= 1'b0;
        end
        6'b101011:
        begin
            // sw
            MemtoReg <= 1'b0;
            MemWrite <= 1'b1;
            RegWrite <= 1'b0;
            ALUControl <= 5'b00000;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b1;
            PCtoReg <= 1'b0;
        end
        6'b001010:
        begin
            // slti
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01111;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b1;
            PCtoReg <= 1'b0;
        end
        6'b001011:
        begin
            // sltiu
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b1;
            ALUControl <= 5'b01111;
            Branch <= 2'b00;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b1;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
    endcase
end

// 跳转类指令（R型）
always@(*)
begin
    case({op, func})
        12'b000000001000:
        begin
            // jr
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b0;
            ALUControl <= 5'b11111;
            Branch <= 2'b11;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
    endcase
end

// 跳转类指令（I和J型）
always@(*)
begin
    case(op)
        6'b000100:
        begin
            // beq
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b0;
            ALUControl <= 5'b01101;
            Branch <= 2'b01 & {0, zero};
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b0;
            Extend <= 1'b1;
            PCtoReg <= 1'b0;
        end
        6'b000101:
        begin
            // bne
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b0;
            ALUControl <= 5'b01110;
            Branch <= 2'b01 & {0, zero};
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b0;
            Extend <= 1'b1;
            PCtoReg <= 1'b0;
        end
        6'b000010:
        begin
            // j
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b0;
            ALUControl <= 5'b11111;
            Branch <= 2'b10;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b0;
        end
        6'b000011:
        begin
            // jal
            MemtoReg <= 1'b0;
            MemWrite <= 1'b0;
            RegWrite <= 1'b0;
            ALUControl <= 5'b11111;
            Branch <= 2'b10;
            ALUSrcA <= 1'b0;
            ALuSrcB <= 1'b0;
            RegDst <= 1'b0;
            Extend <= 1'b0;
            PCtoReg <= 1'b1;
        end
    endcase
end

endmodule