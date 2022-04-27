`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
// 
// Create Date: 2022/04/13 19:47:34
// Design Name: 
// Module Name: IR
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

module IR(
    clk, IRWre, InstrIn, InstrOut
);

input clk;
input IRWre;
input [31:0] InstrIn;
output [31:0] InstrOut;

wire clk;
wire IRWre;
wire [31:0] InstrIn;
reg [31:0] InstrOut;

initial
begin
    // 初始化数据
    InstrOut <= 32'b0;
end

always @(posedge clk) 
begin
    if(IRWre)
    begin
        InstrOut <= InstrIn;
    end
end

endmodule
