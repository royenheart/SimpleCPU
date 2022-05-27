`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 王若譞
// 
// Create Date: 2022/05/26 14:24:36
// Design Name: 
// Module Name: Cache_test
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


module CacheDirect_test(

    );
parameter PERIOD  = 20;

reg clk = 1;
reg [10:0] A = 0;
reg [31:0] WD = 0;
reg WE = 0;
wire [31:0] RD;
reg RE =1;

DataMemDirectCache03 datamemdirectcachetest(
    .clk        (clk),
    .A          (A),
    .WD         (WD),
    .WE         (WE),
    .RD         (RD),
    .RE         (RE)
);

initial 
begin
    forever begin
        #(PERIOD/2) clk = ~clk;  
    end
end

initial begin
    forever begin
        #(PERIOD) A = A+ (({$random}%5)+1)*4;
        if(A > 500) begin
            A = ({$random}%100)*4;
        end
    end
end

// initial 
// begin
//     #10
//         A = 11'b0;
//         WD = 32'b0;
//         WE = 1'b0;
//         RE = 1'b1;
//     #20 A = 11'b0;
//         WD = 32'b0;
//         WE = 1'b0;
//         RE = 1'b1;
//     #20 A = {7'b0, 4'b0100};
//         WD = 32'b0;
//         WE = 1'b0;
//         RE = 1'b1;
//     #20 A = 11'b0;
//         WD = 32'h01050607;
//         WE = 1'b1;
//         RE = 1'b0;
//     #20 A = 1'b0;
//         WD = 32'b0;
//         WE = 1'b0;
//         RE = 1'b1;
//     #20 A = {7'b0, 4'b1000};
//         WD = 32'hffffffff;
//         WE = 1'b1;
//         RE = 1'b0;
//     #20 A = {7'b0, 4'b1100};
//         WD = 32'b0;
//         WE = 1'b0;
//         RE = 1'b1;
//     #20 A = {7'b0, 4'b1000};
//         WD = 32'b0;
//         WE = 1'b0;
//         RE = 1'b1;
//     #20 A = {6'b0, 5'b10000};
//         WD = 32'b0;
//         WE = 1'b0;
//         RE = 1'b1;
//     #20 A = {6'b0, 5'b10000};
//         WD = 32'h98765432;
//         WE = 1'b1;
//         RE = 1'b0;
//     #20 A = {6'b0, 5'b11000};
//         WD = 32'b0;
//         WE = 1'b0;
//         RE = 1'b1;        
// end 
endmodule
