`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ruoxuan Wang
// 
// Create Date: 2022/04/13 24:44:54
// Design Name: 
// Module Name: ResultTempReg
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

// Reg: ALU Result to DataMem
module ResultTempReg(
    clk, DataIn, DataOut
);

input clk;
input [31:0] DataIn;
output [31:0] DataOut;

wire clk;
wire [31:0] DataIn;
reg [31:0] DataOut;
    
initial
begin
    // 初始化数据
    DataOut <= 32'b0;
end

always @(posedge clk) 
begin
    DataOut <= DataIn;
end

endmodule
