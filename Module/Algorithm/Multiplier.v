`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/21 23:15:16
// Design Name: 
// Module Name: Multiplier
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


module Multiplier(
        input [31:0] A,
        input [31:0] B,
        output reg [31:0] result
    );
    parameter n = 32;
    integer i;
    reg [2*n:0] P;

    always@(A or B)
    begin
        P = {32'b0,A,1'b0};
        for(i = 0; i < n; i = i + 1)
        begin
            case(P[1:0])
                2'b01:  //加被乘数
                begin
                    P[2*n:n+1] = P[2*n:n+1] + B[n-1:0];
                    P = {P[2*n:2*n],P[2*n:1]};
                end

                2'b10:  //减被乘数
                begin
                    P[2*n:n+1] = P[2*n:n+1] + ( ~B[n-1:0] + 1);  
                    P = {P[2*n:2*n],P[2*n:1]};
                end

                default:
                begin
                    P = {P[2*n:2*n], P[2*n:1]};
                    
                end
            endcase
        end
        result = {P[2*n], P[n-1:1]};
    end
endmodule