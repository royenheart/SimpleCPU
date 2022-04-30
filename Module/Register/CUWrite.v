`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
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

// 写回阶段CU控制信号寄存器
module CUWrite(
    clk, rst, enable
    MemtoRegIn, PCtoRegIn, RegWriteIn,
    MemtoRegOut, PCtoRegOut, RegWriteOut
)

input clk;
input rst;
input enable;
input MemtoRegIn;
input PCtoRegIn;
input RegWriteIn;
output MemtoRegOut;
output PCtoRegOut;
output RegWriteOut;

wire clk;
wire rst;
wire enable;
wire MemtoRegIn;
wire PCtoRegIn;
wire RegWriteIn;
reg  MemtoRegOut;
reg  PCtoRegOut;
reg  RegWriteOut;

initial begin
    MemtoRegOut = 1'b0;
    RegWriteOut = 1'b0;
    PCtoRegOut = 1'b0;
end

always @(posedge clk)
begin
    if (!rst) begin
        MemtoRegOut <= 1'b0;
        RegWriteOut <= 1'b0;
        PCtoRegOut <= 1'b0;
    end
    else begin
        if (enable) begin
            MemtoRegOut = MemtoRegIn;
            RegWriteOut = RegWriteIn;
            PCtoRegOut = PCtoRegIn;
        end
    end
end

endmodule