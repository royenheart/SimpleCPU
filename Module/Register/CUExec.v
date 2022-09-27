`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RoyenHeart
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

// 执行阶段CU控制信号寄存器
module CUExec(
    clk, rst, enable
    ALUControlIn, ALUSrcAIn, ALUSrcBIn, RegDstIn, ExtendIn,
    ALUControlOut, ALUSrcAOut, ALUSrcBOut, RegDstOut, ExtendOut
)

input clk;
input rst;
input enable;
input ALUControlIn;
input ALUSrcAIn;
input ALUSrcBIn;
input RegDstIn;
input ExtendIn;
output ALUControlOut;
output ALUSrcAOut;
output ALUSrcBOut;
output RegDstOut;
output ExtendOut;

wire clk;
wire rst;
wire enable;
wire [4:0] ALUControlIn;
wire ALUSrcAIn;
wire ALUSrcBIn;
wire RegDstIn;
wire ExtendIn;
reg  [4:0] ALUControlOut;
reg  ALUSrcAOut;
reg  ALUSrcBOut;
reg  RegDstOut;
reg  ExtendOut;

initial begin
    ALUControlOut = 5'b00000;
    ALUSrcAOut = 1'b0;
    ALUSrcBOut = 1'b0;
    RegDstOut = 1'b0;
    ExtendOut = 1'b0;
end


always @(posedge clk)
begin
    if (!rst) begin
        ALUControlOut <= 5'b00000;
        ALUSrcAOut <= 1'b0;
        ALUSrcBOut <= 1'b0;
        RegDstOut <= 1'b0;
        ExtendOut <= 1'b0;
    end
    else begin
        if (enable) begin
            ALUControlOut <= ALUControlIn;
            ALUSrcAOut <= ALUSrcAIn;
            ALUSrcBOut <= ALUSrcBIn;
            RegDstOut <= RegDstIn;
            ExtendOut <= ExtendIn;
        end
    end
end

endmodule