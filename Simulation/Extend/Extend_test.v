`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/03/09 13:30:24
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
module Extend_test;
// Extend Parameters
parameter PERIOD  = 10;

// Extend Inputs
reg   ExtSel                               = 0 ;
reg   [15:0]  immediate                    = 0 ;
// Extend Outputs
wire  [31:0]  Extendout                    ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end
Extend  u_Extend (
    .ExtSel                  ( ExtSel            ),
    .immediate               ( immediate  [15:0] ),

    .Extendout               ( Extendout  [31:0] )
);
endmodule