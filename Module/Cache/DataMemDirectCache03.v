`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
// 
// Create Date: 2022/05/24 16:55:18
// Design Name: 
// Module Name: DataMemDirectCache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 数据Cache，直接相联
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// 数据Cache
module DataMemDirectCache03 (
    clk, A, WD, WE, RD, RE, Readhit
);

input clk;
input [10:0] A;
input [31:0] WD;
input WE;
input RE;
output [31:0] RD;
//Cache读命中率
output Readhit;

wire clk;
wire [10:0] A;
wire [31:0] WD;
wire WE;
wire [31:0] RD;
wire RE;
wire Readhit;

//Cache写信号
wire CacheWE;
//Cache写数据
wire [72:0] CacheWD;
//Cache读数据
wire [72:0] CacheRD;
//Cache组号
wire [3:0] CacheBlock;
wire [10:0] CacheBlockdata;
//主存读数据
wire [31:0] MemRead[1:0];

assign CacheBlock = A[6:3];
assign CacheBlockdata = {A[10:3] ,3'b0};

//使用Bram对Cache进行读、写操作
DataMemDirectCacheBram u_datamemdirectcache01 (
    .addrb_0    (CacheBlock),
    .clkb_0     (~clk),
    .dinb_0     (CacheWD),
    .enb_0      (CacheWE),
    .web_0      (CacheWE),
    .doutb_0    (),
    .addra_0    (CacheBlock),
    .clka_0     (clk),
    .dina_0     (73'b0),
    .douta_0    (CacheRD),
    .ena_0      (RE | WE),
    .wea_0      (1'b0)
);

// //主存
// reg [7:0] store[2047:0];

// initial
// begin
//     // 数据初始化（十六进制读入）
//     // 若遇到无法载入问题，请尝试修改路径（绝对路径或相对路径）
//     $readmemh("../../../../../Data/DataMem.txt", store);
// end

// //主存写
// always@(posedge clk)
// begin
//     if(WE == 1'b1)
//     begin
//         store[A[10:0]] = WD[31:24];
//         store[A[10:0] + 1] = WD[23:16];
//         store[A[10:0] + 2] = WD[15:8];
//         store[A[10:0] + 3] = WD[7:0];
//     end
// end

// assign MemRead[0] = {store[CacheBlockdata], store[CacheBlockdata + 1], store[CacheBlockdata + 2], store[CacheBlockdata + 3]};
// assign MemRead[1] = {store[CacheBlockdata + 4], store[CacheBlockdata + 5], store[CacheBlockdata + 6], store[CacheBlockdata + 7]};

MemCacheData memcacheData_01(
    .a_0    (A[10:0] >> 2),
    .clk_0     (clk),
    .d_0     (WD),
    .we_0      (WE),

    .spo_0    (MemRead[0])
);

MemCacheData memcacheData_02(
    .a_0    ((A[10:0] >> 2) + 1),
    .clk_0     (clk),
    .d_0     (WD),
    .we_0      (WE),

    .spo_0    (MemRead[1])
);


//Data Memory Read
assign Readhit = (RE == 1'b1 && CacheRD[72:65] == A[10:3] && CacheRD[64:64] == 1'b1) ? 1'b1 : 1'b0;
assign CacheWE = ((RE == 1'b1 && !(CacheRD[72:65] == A[10:3] && CacheRD[64:64] == 1'b1)) || (WE == 1'b1 && CacheRD[71:65] == A[10:3] && CacheRD[64:64] == 1'b1)) ? 1'b1 : 1'b0;
assign RD = (CacheRD[72:65] == A[10:3] && CacheRD[64:64] == 1'b1) ? ((A[2:2] == 1'b0) ? CacheRD[63:32] : CacheRD[31:0]) : ((A[2:2] == 1'b0) ? CacheWD[63:32] : CacheWD[31:0]);


assign CacheWD = (CacheRD[72:65] == A[10:3] && CacheRD[64:64] == 1'b1) ? 
                    ((WE == 1'b1) ? {A[10:3], 1'b1, (A[2:2] == 1'b0) ? WD : CacheRD[63:32], (A[2:2] == 1'b1) ? WD : CacheRD[31:0]} : 73'b0) 
                  : ((RE == 1'b1) ? {A[10:3], 1'b1, MemRead[0], MemRead[1]} : 73'b0);

endmodule