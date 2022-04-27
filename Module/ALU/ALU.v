`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
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

// 设置头文件定义，若遇到符号未定义，请尝试修改路径
`include "../headers/DefineALU.vh"

module ALU(
    op, A, B, out, zero
);

input [4:0] op;
input [31:0] A;
input [31:0] B;
output [31:0] out;
output zero;

wire [4:0] op;
wire [31:0] A;
wire [31:0] B;
reg [31:0] out;
reg zero;

initial
begin
    // 初始化数据
    out <= 32'd0;
    zero <= 1'b0;
end

wire [31:0] BNegativeComplement;
wire [31:0] BNegative;
wire [31:0] AddOut;
wire AddOverflow;
wire [31:0] SubOut;
wire subOverflow;
wire [31:0] SubuOut;
wire subuOverflow;
wire [31:0] MulOut;

//加法
CLA32 Addu(.a(A),.b(B),.c_in(1'b0),.sum(AddOut),.overflow(AddOverflow));

//有符号数减法
assign BNegativeComplement = B[31] ? {1'b1, B[30:0]} : {1'b0, ~B[30:0] + 1}; 
CLA32 sub(.a(A),.b(BNegativeComplement),.c_in(1'b0),.sum(SubOut),.overflow(subOverflow));

//无符号数减法
assign BNegative = ~B+1;
CLA32 subu(.a(A),.b(BNegative),.c_in(1'b0),.sum(SubuOut),.overflow(subuOverflow));

// 乘法器
Multiplier mul1(.A(A), .B(B), .result(MulOut));

always@(*)
begin
    case(op)
        `ALUSignPlus: 
            begin
                out = AddOut;
                zero = 1'b0;
            end
        `ALUZeroPlus: 
            begin
                out = AddOut;
                zero = 1'b0;
            end
        `ALUSignSub: 
            begin
                out = SubOut;
                zero = 1'b0;
            end
        `ALUZeroSub: 
            begin
                out = SubuOut;
                zero = 1'b0;
            end
        `ALUAnd: 
            begin
                out = A & B;
                zero = 1'b0;
            end
        `ALUOr: 
            begin
                out = A | B;
                zero = 1'b0;
            end
        `ALUXor: 
            begin
                out = A ^ B;
                zero = 1'b0;
            end
        `ALUNor: 
            begin
                out = ~(A ^ B);
                zero = 1'b0;
            end
        `ALUSignLess:
            begin
                if(A[31] == 1 && B[31] == 0) out = {31'b0, 1'b1};
                else if(A[31] == 0 && B[31] == 1) out = {31'b0, 1'b0};
                else out = SubOut ? 1 : 0;
                zero = 1'b0;
            end
        `ALUZeroLess:
            begin
                out = subuOverflow ? 0 : 1;
                zero = 1'b0;
            end
        `ALULogicMLeft:
            begin
                out = B << A;
                zero = 1'b0;
            end
        `ALULogicMRight:
            begin
                out = B >> A;
                zero = 1'b0;
            end
        `ALUMathMRight:
            begin
                out = ($signed(B)) >>> A;
                zero = 1'b0;
            end
        `ALUEqual:
            begin
                out = 32'b0;
                zero = SubOut ? 1'b0 : 1'b1;
            end
        `ALUNotEqual:
            begin
                out = 32'b0;
                zero = SubOut ? 1'b1 : 1'b0;
            end
        `ALULui:
            begin
                out = B << 16;
                zero = 1'b0;
            end
        `ALUMul: //mul
            begin
                out = MulOut;
                zero = 1'b0;
            end
        default:
            begin
                out = 32'b0;
                zero = 1'b0;
            end
    endcase
end

endmodule
