`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/03/09 13:31:16
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
module InstrMem_test;
// InstrMem Parameters
parameter PERIOD  = 10;

// InstrMem Inputs
reg   [4:0]  A                             = 0 ;
// InstrMem Outputs
wire  [31:0]  RD                           ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end
InstrMem  u_InstrMem (
    .A                       ( A   [4:0]  ),

    .RD                      ( RD  [31:0] )
);
endmodule