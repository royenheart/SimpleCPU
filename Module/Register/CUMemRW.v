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

// 存储器访问阶段CU控制信号寄存器
module CUMemRW(
    clk, rst, enable
    MemWriteIn, BranchIn,
    MemWriteOut, BranchOut
)

input clk;
input rst;
input enable;
input MemWriteIn;
input BranchIn;
output MemWriteOut;
output BranchOut;

wire clk;
wire rst;
wire enable;
wire MemWriteIn;
wire [1:0] BranchIn;
reg  MemWriteOut;
reg  [1:0] BranchOut;

initial begin
    MemWriteOut = 1'b0;
    BranchOut = 2'b00;
end

always @(posedge clk)
begin
    if (!rst) begin
        MemWriteOut <= 1'b0;
        BranchOut <= 2'b00;
    end
    else begin
        if (enable) begin
            MemWriteOut = MemWriteIn;
            BranchOut = BranchIn;
        end
    end
end

endmodule