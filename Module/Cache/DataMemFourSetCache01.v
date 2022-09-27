`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ruoxuan Wang
// 
// Create Date: 2022/05/19 19:54:25
// Design Name: 
// Module Name: DataMemCache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 四路组相联-16槽四组
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// 数据Cache
module DataMemFourSetCache01 (
    clk, A, WD, WE, RD, RE, Readhit
);

input clk;
input [10:0] A;
input [31:0] WD;
input WE;
input RE;
output [31:0] RD;
//读命中率
output Readhit;

wire clk;
wire [10:0] A;
wire [31:0] WD;
wire WE;
wire [31:0] RD;
wire RE;
wire Readhit;

//Cache写信号
wire [3:0] CacheWE;
//Cache写数据
wire [135:0] CacheWD;
//Cache读数据
wire [135:0] CacheRD[3:0];
//PLRU替换算法指针
reg [2:0] PointerTree[3:0];
//Cache组号
wire [1:0] CacheBlock;
wire [10:0] CacheBlockdata;
wire [3:0] CacheAddress;
//主存读数据
wire [31:0] MemRead[3:0];
//Cache槽是否命中
wire [3:0] CacheHit;
//Cache槽命中时将要写入的数据
wire [135:0] CacheWriteHitWD[3:0];
//Cache槽命中后读出的数据
wire [31:0] CacheReadHitRD[3:0];
//主存数据
wire [135:0] MemStoreRead;
wire [31:0] MemStoreRD;

assign CacheBlock = A[5:4];
assign CacheAddress = {CacheBlock, 2'b00};
assign CacheBlockdata = {A[10:4], 4'b0};

initial
begin
    // CacheWE = 4'b0;
    PointerTree[0] = 3'b0;
    PointerTree[1] = 3'b0;
    PointerTree[2] = 3'b0;
    PointerTree[3] = 3'b0;
end

//使用Bram的四路组相联Cache
DataMemCacheFourSetAssociative u_datamem_cache01 (
    .addra_0    (CacheAddress),
    .clka_0     (clk),
    .dina_0     (136'b0),
    .douta_0    (CacheRD[0]),
    .ena_0      (1'b1),
    .wea_0      (1'b0),
    .addrb_0    (CacheAddress),
    .clkb_0     (~clk),
    .dinb_0     (CacheWD),
    .enb_0      (CacheWE[0]),
    .web_0      (CacheWE[0]),
    .doutb_0    ()
);

DataMemCacheFourSetAssociative u_datamem_cache02 (
    .addrb_0    (CacheAddress + 1),
    .clkb_0     (~clk),
    .dinb_0     (CacheWD),
    .enb_0      (CacheWE[1]),
    .web_0      (CacheWE[1]),
    .doutb_0    (),
    .addra_0    (CacheAddress + 1),
    .clka_0     (clk),
    .dina_0     (136'b0),
    .douta_0    (CacheRD[1]),
    .ena_0      (1'b1),
    .wea_0      (1'b0)
);

DataMemCacheFourSetAssociative u_datamem_cache03 (
    .addrb_0    (CacheAddress + 2),
    .clkb_0     (~clk),
    .dinb_0     (CacheWD),
    .enb_0      (CacheWE[2]),
    .web_0      (CacheWE[2]),
    .doutb_0    (),
    .addra_0    (CacheAddress + 2),
    .clka_0     (clk),
    .dina_0     (136'b0),
    .douta_0    (CacheRD[2]),
    .ena_0      (1'b1),
    .wea_0      (1'b0)
);

DataMemCacheFourSetAssociative u_datamem_cache04 (
    .addrb_0    (CacheAddress + 3),
    .clkb_0     (~clk),
    .dinb_0     (CacheWD),
    .enb_0      (CacheWE[3]),
    .web_0      (CacheWE[3]),
    .doutb_0    (),
    .addra_0    (CacheAddress + 3),
    .clka_0     (clk),
    .dina_0     (136'b0),
    .douta_0    (CacheRD[3]),
    .ena_0      (1'b1),
    .wea_0      (1'b0)
);

// //主存
// reg [7:0] store[2047:0];
// initial
// begin
//     // 数据初始化（十六进制读入
//     // 若遇到无法载入问题，请尝试修改路径（绝对路径或相对路径）
//     $readmemh("../../../../../Data/DataMem.txt", store);
// end

// //使用写直达与非写分配
// always@(posedge clk)
// begin
//     if(WE == 1'b1)
//     begin
//         // MIPS使用小端模式进行数据存储
//         store[A[10:0]] <= WD[31:24];
//         store[A[10:0]+1] <= WD[23:16];
//         store[A[10:0]+2] <= WD[15:8];
//         store[A[10:0]+3] <= WD[7:0];
//     end
// end

// assign MemRead[0] = {store[CacheBlockdata], store[CacheBlockdata + 1], store[CacheBlockdata + 2], store[CacheBlockdata + 3]};
// assign MemRead[1] = {store[CacheBlockdata + 4], store[CacheBlockdata + 5], store[CacheBlockdata + 6], store[CacheBlockdata + 7]};
// assign MemRead[2] = {store[CacheBlockdata + 8], store[CacheBlockdata + 9], store[CacheBlockdata + 10], store[CacheBlockdata + 11]};
// assign MemRead[3] = {store[CacheBlockdata + 12], store[CacheBlockdata + 13], store[CacheBlockdata + 14], store[CacheBlockdata + 15]};

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

MemCacheData memcacheData_03(
    .a_0    ((A[10:0] >> 2) + 2),
    .clk_0     (clk),
    .d_0     (WD),
    .we_0      (WE),

    .spo_0    (MemRead[2])
);

MemCacheData memcacheData_04(
    .a_0    ((A[10:0] >> 2) + 3),
    .clk_0     (clk),
    .d_0     (WD),
    .we_0      (WE),

    .spo_0    (MemRead[3])
);

assign Readhit = (RE == 1'b1 && (CacheHit[0] == 1'b1 || CacheHit[1] == 1'b1 || CacheHit[2] == 1'b1 || CacheHit[2] == 1'b1)) ? 1'b1 : 1'b0;
assign CacheHit[0] = (CacheRD[0][135:129] == A[10:4] && CacheRD[0][128:128] == 1'b1) ? 1'b1 : 1'b0;
assign CacheHit[1] = (CacheRD[1][135:129] == A[10:4] && CacheRD[1][128:128] == 1'b1) ? 1'b1 : 1'b0;
assign CacheHit[2] = (CacheRD[2][135:129] == A[10:4] && CacheRD[2][128:128] == 1'b1) ? 1'b1 : 1'b0;
assign CacheHit[3] = (CacheRD[3][135:129] == A[10:4] && CacheRD[3][128:128] == 1'b1) ? 1'b1 : 1'b0;

assign CacheWriteHitWD[0][135:129] = A[10:4];
assign CacheWriteHitWD[0][128:128] = 1'b1;            
assign CacheWriteHitWD[0][127:96] = (A[3:2] == 2'b00) ? WD : CacheRD[0][127:96];
assign CacheWriteHitWD[0][95:64] = (A[3:2] == 2'b01) ? WD : CacheRD[0][95:64];
assign CacheWriteHitWD[0][63:32] = (A[3:2] == 2'b10) ? WD : CacheRD[0][63:32];
assign CacheWriteHitWD[0][31:0] = (A[3:2] == 2'b11) ? WD : CacheRD[0][31:0];

assign CacheWriteHitWD[1][135:129] = A[10:4];
assign CacheWriteHitWD[1][128:128] = 1'b1;            
assign CacheWriteHitWD[1][127:96] = (A[3:2] == 2'b00) ? WD : CacheRD[1][127:96];
assign CacheWriteHitWD[1][95:64] = (A[3:2] == 2'b01) ? WD : CacheRD[1][95:64];
assign CacheWriteHitWD[1][63:32] = (A[3:2] == 2'b10) ? WD : CacheRD[1][63:32];
assign CacheWriteHitWD[1][31:0] = (A[3:2] == 2'b11) ? WD : CacheRD[1][31:0];

assign CacheWriteHitWD[2][135:129] = A[10:4];
assign CacheWriteHitWD[2][128:128] = 1'b1;            
assign CacheWriteHitWD[2][127:96] = (A[3:2] == 2'b00) ? WD : CacheRD[2][127:96];
assign CacheWriteHitWD[2][95:64] = (A[3:2] == 2'b01) ? WD : CacheRD[2][95:64];
assign CacheWriteHitWD[2][63:32] = (A[3:2] == 2'b10) ? WD : CacheRD[2][63:32];
assign CacheWriteHitWD[2][31:0] = (A[3:2] == 2'b11) ? WD : CacheRD[2][31:0];

assign CacheWriteHitWD[3][135:129] = A[10:4];
assign CacheWriteHitWD[3][128:128] = 1'b1;            
assign CacheWriteHitWD[3][127:96] = (A[3:2] == 2'b00) ? WD : CacheRD[3][127:96];
assign CacheWriteHitWD[3][95:64] = (A[3:2] == 2'b01) ? WD : CacheRD[3][95:64];
assign CacheWriteHitWD[3][63:32] = (A[3:2] == 2'b10) ? WD : CacheRD[3][63:32];
assign CacheWriteHitWD[3][31:0] = (A[3:2] == 2'b11) ? WD : CacheRD[3][31:0];

assign MemStoreRead[135:129] = A[10:4];
assign MemStoreRead[128:128] = 1'b1;
assign MemStoreRead[127:96] = MemRead[0];
assign MemStoreRead[95:64] = MemRead[1];
assign MemStoreRead[63:32] = MemRead[2];
assign MemStoreRead[31:0] = MemRead[3];

assign CacheWE[0] = ((RE == 1'b1 && CacheHit[0] == 1'b0 && CacheHit[1] == 1'b0 && CacheHit[2] == 1'b0 && 
                        CacheHit[3] == 1'b0 && PointerTree[CacheBlock][0] == 1'b0 && PointerTree[CacheBlock][1] == 1'b0) 
                    || (WE == 1'b1 && CacheHit[0] == 1'b1)) ? 1'b1 : 1'b0;
assign CacheWE[1] = ((RE == 1'b1 && CacheHit[0] == 1'b0 && CacheHit[1] == 1'b0 && CacheHit[2] == 1'b0 && 
                        CacheHit[3] == 1'b0 && PointerTree[CacheBlock][0] == 1'b0 && PointerTree[CacheBlock][1] == 1'b1) 
                    || (WE == 1'b1 && CacheHit[1] == 1'b1)) ? 1'b1 : 1'b0;
assign CacheWE[2] = ((RE == 1'b1 && CacheHit[0] == 1'b0 && CacheHit[1] == 1'b0 && CacheHit[2] == 1'b0 && 
                        CacheHit[3] == 1'b0 && PointerTree[CacheBlock][0] == 1'b1 && PointerTree[CacheBlock][2] == 1'b0) 
                    || (WE == 1'b1 && CacheHit[2] == 1'b1)) ? 1'b1 : 1'b0;
assign CacheWE[3] = ((RE == 1'b1 && CacheHit[0] == 1'b0 && CacheHit[1] == 1'b0 && CacheHit[2] == 1'b0 && 
                        CacheHit[3] == 1'b0 && PointerTree[CacheBlock][0] == 1'b1 && PointerTree[CacheBlock][2] == 1'b1) 
                    || (WE == 1'b1 && CacheHit[3] == 1'b1)) ? 1'b1 : 1'b0;

assign CacheWD = ((WE == 1'b1 && CacheHit[0] == 1'b1) ? CacheWriteHitWD[0] : 32'b0) | ((WE == 1'b1 && CacheHit[1] == 1'b1) ? CacheWriteHitWD[1] : 32'b0)
                | ((WE == 1'b1 && CacheHit[2] == 1'b1) ? CacheWriteHitWD[2] : 32'b0) |  ((WE == 1'b1 && CacheHit[3] == 1'b1) ? CacheWriteHitWD[3] : 32'b0) 
                | ((RE == 1'b1 && CacheHit[0] == 1'b0 && CacheHit[1] == 1'b0 && CacheHit[2] == 1'b0 && CacheHit[3] == 1'b0) ? MemStoreRead : 32'b0);

assign CacheReadHitRD[0] = (A[3:3] == 1'b0) ? (A[2:2] == 1'b0 ? CacheRD[0][127:96] : CacheRD[0][95:64]) : ((A[2:2] == 1'b0 ? CacheRD[0][63:32] : CacheRD[0][31:0]));
assign CacheReadHitRD[1] = (A[3:3] == 1'b0) ? (A[2:2] == 1'b0 ? CacheRD[1][127:96] : CacheRD[1][95:64]) : ((A[2:2] == 1'b0 ? CacheRD[1][63:32] : CacheRD[1][31:0]));
assign CacheReadHitRD[2] = (A[3:3] == 1'b0) ? (A[2:2] == 1'b0 ? CacheRD[2][127:96] : CacheRD[2][95:64]) : ((A[2:2] == 1'b0 ? CacheRD[2][63:32] : CacheRD[2][31:0]));
assign CacheReadHitRD[3] = (A[3:3] == 1'b0) ? (A[2:2] == 1'b0 ? CacheRD[3][127:96] : CacheRD[3][95:64]) : ((A[2:2] == 1'b0 ? CacheRD[3][63:32] : CacheRD[3][31:0]));
assign MemStoreRD = (A[3:3] == 1'b0) ? (A[2:2] == 1'b0 ? CacheWD[127:96] : CacheWD[95:64]) : ((A[2:2] == 1'b0 ? CacheWD[63:32] : CacheWD[31:0]));
assign RD = ((RE == 1'b1 && CacheHit[0] == 1'b1) ? CacheReadHitRD[0] : 32'b0) | ((RE == 1'b1 && CacheHit[1] == 1'b1) ? CacheReadHitRD[1] : 32'b0)
            | ((RE == 1'b1 && CacheHit[2] == 1'b1) ? CacheReadHitRD[2] : 32'b0) | ((RE == 1'b1 && CacheHit[3] == 1'b1) ? CacheReadHitRD[3] : 32'b0)
            | ((RE == 1'b1 && CacheHit[0] == 1'b0 && CacheHit[1] == 1'b0 && CacheHit[2] == 1'b0 && CacheHit[3] == 1'b0) ? MemStoreRD : 32'b0);



//PLRU替换算法指针更新
always @(posedge clk) 
begin
    if(CacheWE[0] == 1'b1)
    begin
        PointerTree[CacheBlock][0:0] <= 1'b1;
        PointerTree[CacheBlock][1:1] <= 1'b1;
    end
    if(CacheWE[1] == 1'b1)
    begin
        PointerTree[CacheBlock][0:0] <= 1'b1;
        PointerTree[CacheBlock][1:1] <= 1'b0;
    end
    if(CacheWE[2] == 1'b1)
    begin
        PointerTree[CacheBlock][0:0] <= 1'b0;
        PointerTree[CacheBlock][2:2] <= 1'b1;
    end
    if(CacheWE[3] == 1'b1)
    begin
        PointerTree[CacheBlock][0:0] <= 1'b0;
        PointerTree[CacheBlock][2:2] <= 1'b0;
    end
end

endmodule