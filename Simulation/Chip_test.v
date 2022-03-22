`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/03/13 13:10:33
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
module Chip_test;
// Chip Parameters
parameter PERIOD  = 10;
// Chip Inputs
reg   [31:0]  control01                    = 0 ;
// Chip Outputs
wire  [31:0]  control02                    ;

Chip #(
    .PERIOD ( PERIOD ))
 u_Chip (
    .control01               ( control01  [31:0] ),

    .control02               ( control02  [31:0] )
);
endmodule