`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: DataMem
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

module DataMem (
    // 32位数据存储地址
    input wire [4:0] A,
    // 32位数据读取
    input wire [31:0] WD,
    // 数据存储判断
    input wire WE,
    input wire clk,
    output reg[31:0] RD
);

// A为5位地址，故需要32个32位寄存器
reg [31:0] store[31:0];

// 当时钟上升沿时改变进行数据的读或写
always@(posedge clk)
begin
    case(WE)
        // 进行数据存储
        1'b1:
        begin
            store[A] <= WD;
        end
        // 进行数据读
        1'b0:
        begin
            RD <= store[A];
        end
        default: RD <= 32'b0;
    endcase
end

endmodule