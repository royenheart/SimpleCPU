`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RoyenHeart
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

// 数据存储器，使用BRAM
module DataMemBRAM (
    clk, A, WD, WE, RD
);

input clk;
// 32位数据存储地址
input [31:0] A;
// 32位数据读取
input [31:0] WD;
// 数据存储判断
input WE;
output [31:0] RD;

wire clk;
wire [31:0] A;
wire [31:0] WD;
wire WE;
wire [31:0] RD;

DataMemBRAMDesign_wrapper u_datamem_bram01 (
    .addra_0    (A),
    .clka_0     (clk),
    .dina_0     (WD[31:24]),
    .wea_0      (WE),
    .douta_0    (RD[31:24])
);

DataMemBRAMDesign_wrapper u_datamem_bram02 (
    .addra_0    (A + 1),
    .clka_0     (clk),
    .dina_0     (WD[23:16]),
    .wea_0      (WE),
    .douta_0    (RD[23:16])
);

DataMemBRAMDesign_wrapper u_datamem_bram03 (
    .addra_0    (A + 2),
    .clka_0     (clk),
    .dina_0     (WD[15:8]),
    .wea_0      (WE),
    .douta_0    (RD[15:8])
);

DataMemBRAMDesign_wrapper u_datamem_bram04 (
    .addra_0    (A + 3),
    .clka_0     (clk),
    .dina_0     (WD[7:0]),
    .wea_0      (WE),
    .douta_0    (RD[7:0])
);

endmodule