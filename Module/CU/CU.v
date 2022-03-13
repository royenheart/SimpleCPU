`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓�?
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

module CU(
    // 6位操作数输入
    input wire [5:0] op,
    // 6位功能数输入，与op共同决定输出
    input wire [5:0] func,
    // ALU Zero信号，用于判断条件跳转语句是否成�?
    // 只在跳转指令时需要进行判�?
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

assign MemtoReg = (op == 6'b100011)?1'b1:1'b0;
assign MemWrite = (op == 6'b101011)?1'b1:1'b0;
assign RegWrite = (op == 6'b101011)?1'b0:1'b1;
assign ALUControl[4] = (opfunc == 12'b000000001000 || op == 6'b000010 || op == 6'b000011)?1'b1:1'b0;
assign ALUControl[3] = (opfunc == 12'b000000101010 || opfunc == 12'b000000101011 || opfunc == 12'b000000000000 || opfunc == 12'b000000000010 || opfunc == 12'b000000000011 || opfunc == 12'b000000000100 || opfunc == 12'b000000000110 || opfunc == 12'b000000000111 || opfunc == 12'b000000001000 || op == 6'b001111 || op == 6'b000100 || op == 6'b000101 || op == 6'b001010 || op == 6'b001011 || op == 6'b000010 || op == 6'b000011)?1'b1:1'b0;
assign ALUControl[2] = (opfunc == 12'b000000100100 || opfunc == 12'b000000100101 || opfunc == 12'b000000100110 || opfunc == 12'b000000100111 || opfunc == 12'b000000000011 || opfunc == 12'b000000000111 || opfunc == 12'b000000001000 || op == 6'b001100 || op == 6'b001101 || op == 6'b001110 || op == 6'b001111 || op == 6'b000100 || op == 6'b000101 || op == 6'b000010 || op == 6'b000011)?1'b1:1'b0;
assign ALUControl[1] = (opfunc == 12'b000000100010 || opfunc == 12'b000000100011 || opfunc == 12'b000000100110 || opfunc == 12'b000000100111 || opfunc == 12'b000000000000 || opfunc == 12'b000000000010 || opfunc == 12'b000000000100 || opfunc == 12'b000000000110 || opfunc == 12'b000000001000 || op == 6'b001110 || op == 6'b001111 || op == 6'b000101 || op == 6'b000010 || op == 6'b000011)?1'b1:1'b0;
assign ALUControl[0] = (opfunc == 12'b000000100001 || opfunc == 12'b000000100011 || opfunc == 12'b000000100101 || opfunc == 12'b000000100111 || opfunc == 12'b000000101011 || opfunc == 12'b000000000010 || opfunc == 12'b000000000110 || opfunc == 12'b000000001000 || op == 6'b001101 || op == 6'b001111 || op == 6'b000100 || op == 6'b001011 || op == 6'b000010 || op == 6'b000011)?1'b1:1'b0;
assign Branch[1] = (op == 6'b000010 || op == 6'b000011 || opfunc == 12'b000000001000)?1'b1:1'b0;
assign Branch[0] = (opfunc == 12'b000000001000 || (op == 6'b000100 && zero == 1'b1) || (op == 6'b000101 && zero == 1'b1))?1'b1:1'b0;
assign ALUSrcA = (opfunc == 12'b000000000000 || opfunc == 12'b000000000010 || opfunc == 12'b000000000011)?1'b1:1'b0;
assign ALUSrcB = (op == 6'b001000 || op == 6'b001001 || op == 6'b001100 || op == 6'b001101 || op == 6'b001110 || op == 6'b001111 || op == 6'b100011 || op == 6'b101011 || op == 6'b001010 || op == 6'b001011)?1'b1:1'b0;
assign RegDst = (opfunc == 12'b000000100000 || opfunc == 12'b000000100001 || opfunc == 12'b000000100010 || opfunc == 12'b000000100011 || opfunc == 12'b000000100100 || opfunc == 12'b000000100101 || opfunc == 12'b000000100110 || opfunc == 12'b000000100111 || opfunc == 12'b000000101010 || opfunc == 12'b000000101011 || opfunc == 12'b000000000000 || opfunc == 12'b000000000010 || opfunc == 12'b000000000011 || opfunc == 12'b000000000100 || opfunc == 12'b000000000110 || opfunc == 12'b000000000111 || opfunc == 12'b000000001000)?1'b1:1'b0;
assign Extend = (op == 6'b001000 || op == 6'b100011 || op == 6'b101011 || op == 6'b000100 || op == 6'b000101 || op == 6'b001010)?1'b1:1'b0;
assign PCtoReg = (op == 6'b000011)?1'b1:1'b0;

// // R型数据操作类
// always@(op or func)
// begin
//     case({op, func})
//         12'b000000100000:
//         begin
//             // add
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00000;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             // 不使用立即数
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000100001:
//         begin
//             // addu
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00001;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000100010:
//         begin
//             // sub
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00010;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000100011:
//         begin
//             // subu
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00011;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000100100:
//         begin
//             // and
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00100;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000100101:
//         begin
//             // or
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00101;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000100110:
//         begin
//             // xor
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00110;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000100111:
//         begin
//             // nor
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00111;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000101010:
//         begin
//             // slt
//             // 判断错误ALU输出0，判断正确ALU输出1
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01000;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000101011:
//         begin
//             // sltu
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01001;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000000000:
//         begin
//             // sll
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01010;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b1;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000000010:
//         begin
//             // srl
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01011;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b1;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000000011:
//         begin
//             // sra
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01100;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b1;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000000100:
//         begin
//             // sllv
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01010;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000000110:
//         begin
//             // srlv
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01011;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         12'b000000000111:
//         begin
//             // srav
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01100;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b1;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         default:
//         begin
//             // 错误指令
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b11111;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//     endcase
// end

// // I型数据操作类
// always@(op)
// begin
//     case(op)
//         6'b001000:
//         begin
//             // addi
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00000;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b1;
//             PCtoReg <= 1'b0;
//         end
//         6'b001001:
//         begin
//             // addi
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00000;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         6'b001100:
//         begin
//             // andi
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00100;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         6'b001101:
//         begin
//             // ori
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00101;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         6'b001110:
//         begin
//             // xori
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00110;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         6'b001111:
//         begin
//             // lui
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01010;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         6'b100011:
//         begin
//             // lw
//             MemtoReg <= 1'b1;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b00000;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b1;
//             PCtoReg <= 1'b0;
//         end
//         6'b101011:
//         begin
//             // sw
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b1;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b00000;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b1;
//             PCtoReg <= 1'b0;
//         end
//         6'b001010:
//         begin
//             // slti
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01111;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b1;
//             PCtoReg <= 1'b0;
//         end
//         6'b001011:
//         begin
//             // sltiu
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b1;
//             ALUControl <= 5'b01111;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b1;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         default:
//         begin
//             // 错误指令
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b11111;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//     endcase
// end

// // 跳转类指令（R型）
// always@(op or func)
// begin
//     case({op, func})
//         12'b000000001000:
//         begin
//             // jr
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b11111;
//             Branch <= 2'b11;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         default:
//         begin
//             // 错误指令
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b11111;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//     endcase
// end

// // 跳转类指令（I和J型）
// always@(op or zero)
// begin
//     case(op)
//         6'b000100:
//         begin
//             // beq
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b01101;
//             Branch <= 2'b01 & {1'b0, zero};
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b1;
//             PCtoReg <= 1'b0;
//         end
//         6'b000101:
//         begin
//             // bne
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b01110;
//             Branch <= 2'b01 & {1'b0, zero};
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b1;
//             PCtoReg <= 1'b0;
//         end
//         6'b000010:
//         begin
//             // j
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b11111;
//             Branch <= 2'b10;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//         6'b000011:
//         begin
//             // jal
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b11111;
//             Branch <= 2'b10;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b1;
//         end
//         default:
//         begin
//             // 错误指令
//             MemtoReg <= 1'b0;
//             MemWrite <= 1'b0;
//             RegWrite <= 1'b0;
//             ALUControl <= 5'b11111;
//             Branch <= 2'b00;
//             ALUSrcA <= 1'b0;
//             ALUSrcB <= 1'b0;
//             RegDst <= 1'b0;
//             Extend <= 1'b0;
//             PCtoReg <= 1'b0;
//         end
//     endcase
// end

endmodule