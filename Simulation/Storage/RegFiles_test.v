`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/03/09 13:31:38
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
module RegFiles_test;
// RegFiles Parameters
parameter PERIOD  = 10;

// RegFiles Inputs
reg   [4:0]  A1                            = 0 ;
reg   [4:0]  A2                            = 0 ;
reg   [4:0]  A3                            = 0 ;
reg   [31:0]  WD3                          = 0 ;
reg   clk                                  = 0 ;
reg   WE3                                  = 0 ;
// RegFiles Outputs
wire  [31:0]  RD1                          ;
wire  [31:0]  RD2                          ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end
RegFiles  u_RegFiles (
    .A1                      ( A1   [4:0]  ),
    .A2                      ( A2   [4:0]  ),
    .A3                      ( A3   [4:0]  ),
    .WD3                     ( WD3  [31:0] ),
    .clk                     ( clk         ),
    .WE3                     ( WE3         ),

    .RD1                     ( RD1  [31:0] ),
    .RD2                     ( RD2  [31:0] )
);
endmodule