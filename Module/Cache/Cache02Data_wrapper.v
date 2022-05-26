`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 谢皓泽
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: Cache02Data_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Cache - 设计2，数据部分Cache
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Cache02Data_wrapper(
    A, WD, clk, MemWrite,
    DataMemRead, hit
);

// -------
// 输入输出
// -------

input wire [31:0] A;
input wire MemWrite;
input wire clk;
input wire [31:0] WD;
// 最终输出，需要进行运算得出
output wire [31:0] DataMemRead;
output wire hit;

// -------
// BRAM输出
// -------

reg write;
wire [69:0] Out[3:0];

// -------
// 主存输出
// -------

wire [31:0] MemRead[1:0];

// -----------
// PLRU替换策略
// -----------

reg [2:0] tree[7:0];
reg [7:0] treeData[7:0];

// ---------
// 数据位分割
// ---------

wire Valid[3:0];
wire [4:0] cacheTag[3:0];
wire [63:0] cacheData[3:0];
wire equal[3:0];
// 是否有空闲的槽
wire hasSpare;
wire [4:0] tag;
wire [4:0] index;
wire [3:0] offset;
wire [1:0] which;
wire [1:0] hitWhat;

// -------------
// PLRU替换策略用
// -------------

integer i;
integer j;
integer replace;
reg enableB[3:0];
reg [4:0] writeIndex; 
reg [69:0] dinb;

assign tag = A[10:6];
assign index = {2'b00, A[5:3]};
assign offset = A[2];

// 有效位
assign Valid[0] = Out[0][69];
assign Valid[1] = Out[1][69];
assign Valid[2] = Out[2][69];
assign Valid[3] = Out[3][69];
// Tag
assign cacheTag[0] = Out[0][68:64];
assign cacheTag[1] = Out[1][68:64];
assign cacheTag[2] = Out[2][68:64];
assign cacheTag[3] = Out[3][68:64];
// Cache具体数据
assign cacheData[0] = Out[0][63:0];
assign cacheData[1] = Out[1][63:0];
assign cacheData[2] = Out[2][63:0];
assign cacheData[3] = Out[3][63:0];
// 表示命中那个块
assign equal[0] = Valid[0] & (cacheTag[0] == tag)?1'b1:1'b0;
assign equal[1] = Valid[1] & (cacheTag[1] == tag)?1'b1:1'b0;
assign equal[2] = Valid[2] & (cacheTag[2] == tag)?1'b1:1'b0;
assign equal[3] = Valid[3] & (cacheTag[3] == tag)?1'b1:1'b0;
// 表示是否有命中
assign hit = equal[0] | equal[1] | equal[2] | equal[3];
// 有效位为0，表示有空余
assign hasSpare = !(Valid[0] & Valid[1] & Valid[2] & Valid[3]);
// 表示哪个槽被命中
assign hitWhat = (equal[0] == 1'b1)?0:(equal[1] == 1'b1)?1:(equal[2] == 1'b1)?2:(equal[3] == 1'b1)?3:0;
// 哪个有效位为0，则使用哪个（表示哪个槽是空闲位）
assign which = (Valid[0] == 1'b0)?0:(Valid[1] == 1'b0)?1:(Valid[2] == 1'b0)?2:(Valid[3] == 1'b0)?3:0;

wire [31:0] tempOut[3:0];
assign tempOut[0] = (offset)?cacheData[0][63:32]:cacheData[0][31:0];
assign tempOut[1] = (offset)?cacheData[1][63:32]:cacheData[1][31:0];
assign tempOut[2] = (offset)?cacheData[2][63:32]:cacheData[2][31:0];
assign tempOut[3] = (offset)?cacheData[3][63:32]:cacheData[3][31:0];
assign DataMemRead = (MemWrite == 1'b1)?0:(!hit)?MemRead[0]:(equal[0] == 1'b1)?tempOut[0]:(equal[1] == 1'b1)?tempOut[1]:(equal[2] == 1'b1)?tempOut[2]:(equal[3] == 1'b1)?tempOut[3]:0;

initial
begin
    write = 0'b0;
    for (i = 0; i <= 3; i = i + 1) begin
        enableB[i] = 1'b0;
    end
    for (i = 0; i <= 7; i = i + 1) begin
        tree[i] = 0;
        treeData[i] = 0;
    end
    writeIndex = 0; 
    replace = 0;
end

always @(posedge clk) begin
    // PLRU指针变化
    // 不进行内存写，进行读取的时候进行
    if (MemWrite != 1'b1) begin
        i = index[2:0];
        if (hit) begin
            j = hitWhat;
        end
        else if (!hit && hasSpare) begin
            j = which;
        end
        if (tree[i][2] == 1'b0) begin
            if (hit || hasSpare) begin
                if (tree[i][1] == 1'b0) begin
                    treeData[i][7:6] = j;
                end
                else begin
                    treeData[i][5:4] = j;
                end
            end
            else begin
                replace = (tree[i][1] == 1'b0)?treeData[i][7:6]:treeData[i][5:4];
            end
            tree[i][1] = ~tree[i][1];
        end
        else begin
            if (hit || hasSpare) begin
                if (tree[i][0] == 1'b0) begin
                    treeData[i][3:2] = j;
                end
                else begin
                    treeData[i][1:0] = j;
                end
            end
            else begin
                replace = (tree[i][0] == 1'b0)?treeData[i][3:2]:treeData[i][1:0];
            end
            tree[i][0] = ~tree[i][0];
        end
        tree[i][2] = ~tree[i][2];
        if (!hit && hasSpare) begin
            // 某一个有效位为0，表示还有空闲槽
            // 更新PLRU树和数据并且更新Cache，对应有效位为1
            // which表示该组第几个槽
            for (i = 0; i <= 3; i = i + 1) begin
                if (which == i) begin
                    enableB[i] <= 1'b1;
                    writeIndex <= index + i;
                end
                else begin
                    enableB[i] <= 1'b0;
                end
            end
            dinb <= {1'b1, tag, MemRead[1], MemRead[0]};
        end
        else if (!hit && !hasSpare) begin
            // 未命中且无空闲槽
            // 替换Cache数据，由于没有一个有效位为0（没有空闲槽），替换其中一个。
            // which表示该组第几个槽
            enableB[replace] <= 1'b1;
            writeIndex <= index + replace;
            dinb <= {1'b1, tag, MemRead[1], MemRead[0]};
        end
    end
end

// 主存

MemCacheData memcacheData_01(
    .a_0    (A[10:0] >> 2),
    .clk_0     (clk),
    .d_0     (WD),
    .we_0      (MemWrite),

    .spo_0    (MemRead[0])
);

MemCacheData memcacheData_02(
    .a_0    ((A[10:0] >> 2) + 1),
    .clk_0     (clk),
    .d_0     (WD),
    .we_0      (MemWrite),

    .spo_0    (MemRead[1])
);

// Cache存储

Cache02Data cache02Data_01(
    .addra_0    (index),
    .clka_0     (clk),
    .dina_0     (0),
    .ena_0      (1'b1),
    .wea_0      (write),

    .douta_0    (Out[0]),

    .addrb_0    (writeIndex),
    .clkb_0     (~clk),
    .dinb_0     (dinb),
    .enb_0      (enableB[0]),
    .web_0      (enableB[0]),

    .doutb_0    ()
);

Cache02Data cache02Data_02(
    .addra_0    (index + 1),
    .clka_0     (clk),
    .dina_0     (0),
    .ena_0      (1'b1),
    .wea_0      (write),

    .douta_0    (Out[1]),

    .addrb_0    (writeIndex),
    .clkb_0     (~clk),
    .dinb_0     (dinb),
    .enb_0      (enableB[1]),
    .web_0      (enableB[1]),

    .doutb_0    ()
);

Cache02Data cache02Data_03(
    .addra_0    (index + 2),
    .clka_0     (clk),
    .dina_0     (0),
    .ena_0      (1'b1),
    .wea_0      (write),

    .douta_0    (Out[2]),

    .addrb_0    (writeIndex),
    .clkb_0     (~clk),
    .dinb_0     (dinb),
    .enb_0      (enableB[2]),
    .web_0      (enableB[2]),

    .doutb_0    ()
);

Cache02Data cache02Data_04(
    .addra_0    (index + 3),
    .clka_0     (clk),
    .dina_0     (0),
    .ena_0      (1'b1),
    .wea_0      (write),

    .douta_0    (Out[3]),

    .addrb_0    (writeIndex),
    .clkb_0     (~clk),
    .dinb_0     (dinb),
    .enb_0      (enableB[3]),
    .web_0      (enableB[3]),

    .doutb_0    ()
);

endmodule