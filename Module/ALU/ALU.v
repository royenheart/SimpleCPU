`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若�?
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

module ALU(
    input [4:0] op,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] out,
    output reg zero
    );

    initial
    begin
        // 初始化数�?
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
    
    CLA32 Addu(.a(A),.b(B),.c_in(1'b0),.sum(AddOut),.overflow(AddOverflow));   //加法

    assign BNegativeComplement = B[31] ? {1'b1, B[30:0]} : {1'b0, ~B[30:0] + 1}; 
    CLA32 sub(.a(A),.b(BNegativeComplement),.c_in(1'b0),.sum(SubOut),.overflow(SubOverflow));   //有符号数减法

    assign BNegative = ~B+1 ; 
    CLA32 subu(.a(A),.b(BNegative),.c_in(1'b0),.sum(SubuOut),.overflow(SubuOverflow));   //无符号数减法

    Multiplier mul1(.A(A), .B(B), .result(MulOut));

    always@(*)
    begin
        case(op)
            5'b00000: 
                begin
                    out = AddOut;
                    zero = 1'b0;
                end
            5'b00001: 
                begin
                    out = AddOut;
                    zero = 1'b0;
                end
            5'b00010: 
                begin
                    out = SubOut;
                    zero = 1'b0;
                end
            5'b00011: 
                begin
                    out = SubuOut;
                    zero = 1'b0;
                end
            5'b00100: 
                begin
                    out = A & B;
                    zero = 1'b0;
                end
            5'b00101: 
                begin
                    out = A | B;
                    zero = 1'b0;
                end
            5'b00110: 
                begin
                    out = A ^ B;
                    zero = 1'b0;
                end
            5'b00111: 
                begin
                    out = ~(A ^ B);
                    zero = 1'b0;
                end
            5'b01000:
                begin
                    if(A[31] == 1 && B[31] == 0) out = {31'b0, 1'b1};
                    else if(A[31] == 0 && B[31] == 1) out = {31'b0, 1'b0};
                    else out = SubOut ? 1 : 0;
                    zero = 1'b0;
                end
            5'b01001:
                begin
                    out = SubuOverflow ? 0 : 1;
                    zero = 1'b0;
                end
            5'b01010:
                begin
                    out = B << A;
                    zero = 1'b0;
                end
            5'b01011:
                begin
                    out = B >> A;
                    zero = 1'b0;
                end
            5'b01100:
                begin
                    out = ($signed(B)) >>> A;
                    zero = 1'b0;
                end
            5'b01101:
                begin
                    out = 32'b0;
                    zero = SubOut ? 1'b0 : 1'b1;
                end
            5'b01110:
                begin
                    out = 32'b0;
                    zero = SubOut ? 1'b1 : 1'b0;
                end
            5'b01111:
                begin
                    out = B << 16;
                    zero = 1'b0;
                end
            5'b10000: //mul
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
