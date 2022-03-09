`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/03/09 13:30:54
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
module DataMem_test;
// DataMem Parameters
parameter PERIOD  = 10;

// DataMem Inputs
reg   [4:0]  A                             = 0 ;
reg   [31:0]  WD                           = 0 ;
reg   WE                                   = 0 ;
reg   clk                                  = 0 ;
// DataMem Outputs
wire  reg[31:0] RD                         ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

DataMem  u_DataMem (
    .A                       ( A             [4:0]  ),
    .WD                      ( WD            [31:0] ),
    .WE                      ( WE                   ),
    .clk                     ( clk                  ),

    .RD                      ( RD                   )
);

endmodule