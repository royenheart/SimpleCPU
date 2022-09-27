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

// 指令操作数寄存器
module InstrReg(
    clk, rst,
    opIn, funcIn,
    opOut, funcOut
);

input clk;
input rst;
input opIn;
input funcIn;
output opOut;
output funcOut;

wire clk;
wire rst;
wire [5:0] opIn;
wire [5:0] funcIn;
wire [5:0] opOut;
wire [5:0] funcOut;

reg [5:0] opNow;
reg [5:0] funcNow;

assign opOut = opNow;
assign funcOut = funcNow;

initial
begin
    opNow = 6'd0;
    funcNow = 6'd0;
end

always @(posedge clk)
begin
    if (rst != 1'b0)
    begin
        opNow <= opIn;
        funcNow <= funcIn;
    end
end

endmodule