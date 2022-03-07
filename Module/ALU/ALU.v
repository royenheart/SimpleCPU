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

module ALU(
    input [4:0] op,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] out,
    output reg zero
    );
    reg [31:0] C;
    reg [31:0] D;
    reg [31:0] ans;
    always@(*)
    begin
        case(op)
            5'b00000: 
                begin
                    C = A[31] ? ({A[31],~A[30:0]}+1) : A; 
                    D = B[31] ? ({B[31],~B[30:0]}+1) : B; 
                    ans = C + D;
                    out = ans[31] ? ({ans[31],~(ans[30:0]-1)}) : ans;
                    zero = 1'b0;
                end
            5'b00001: 
                begin
                    out = A + B;
                    zero = 1'b0;
                end
            5'b00010: 
                begin
                    C = A[31] ? ({A[31],~A[30:0]}+1) : A; 
                    D = B[31] ? ({!B[31], B[30:0]}) : (~B + 1);
                    ans = C + D;
                    out = ans[31] ? ({ans[31],~(ans[30:0]-1)}) : ans;
                    zero = 1'b0;
                end
            5'b00011: 
                begin
                    out = A - B;
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
                    if(A[31] == 1 && B[31] == 1) out = {31'b0, A[30:0] > B[30:0] ? 1:0};
                    if(A[31] == 1 && B[31] == 0) out = {31'b0, 1'b1};
                    if(A[31] == 0 && B[31] == 1) out = {31'b0, 1'b0};
                    if(A[31] == 0 && B[31] == 0) out = {31'b0, A < B ? 1:0};
                    zero = 1'b0;
                end
            5'b01001:
                begin
                    out = {31'b0, A < B ? 1 : 0};
                    zero = 1'b0;
                end
            5'b01010:
                begin
                    out = A << B;
                    zero = 1'b0;
                end
            5'b01011:
                begin
                    out = A >> B;
                    zero = 1'b0;
                end
            5'b01100:
                begin
                    out = ($signed(A)) >>> B;
                    zero = 1'b0;
                end
            5'b01101:
                begin
                    out = 32'b0;
                    zero = (A == B) ? 1'b1 : 1'b0;
                end
            5'b01110:
                begin
                    out = 32'b0;
                    zero = (A != B) ? 1'b1 : 1'b0;
                end
        endcase
    end
endmodule
