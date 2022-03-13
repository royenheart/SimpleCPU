`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: RegFiles
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

module RegFiles(
    input wire [4:0] A1,
    input wire [4:0] A2,
    input wire [4:0] A3,
    input wire [31:0] WD3,
    input wire clk,
    input wire WE3,
    output wire [31:0] RD1,
    output wire [31:0] RD2
);

// 总共需要32个32位的寄存器
reg [31:0] regs[31:0]; 

initial
begin
    // 数据初始化（十六进制读入）
    $readmemh("../../../../../Data/RegFiles.txt", regs);   
end

assign RD1 = regs[A1];
assign RD2 = regs[A2];

always@(posedge clk)
begin
    case(WE3)
        1'b1:
        begin
            regs[A3] <= WD3;
        end
    endcase
end

endmodule