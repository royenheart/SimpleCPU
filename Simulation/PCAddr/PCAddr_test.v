`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/03/09 13:32:08
// Design Name: 
// Module Name:
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
module PCAddr_test;
// PCAddr Parameters
parameter PERIOD  = 10;

// PCAddr Inputs
reg   [4:0]  PC                            = 0 ;
reg   clk                                  = 0 ;
// PCAddr Outputs
wire  [4:0]  IPC                           ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end
PCAddr  u_PCAddr (
    .PC                      ( PC   [4:0] ),
    .clk                     ( clk        ),

    .IPC                     ( IPC  [4:0] )
);
endmodule