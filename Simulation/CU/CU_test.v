`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/03/09 13:29:37
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
//////////////////////////////////////////////////////////////////////////////////\

module CU_test;
// CU Parameters
parameter PERIOD  = 10;

// CU Inputs
reg   [5:0]  op                            = 0 ;
reg   [5:0]  func                          = 0 ;
reg   zero                                 = 0 ;
// CU Outputs
wire  MemtoReg                             ;
wire  MemWrite                             ;
wire  RegWrite                             ;
wire  [4:0]  ALUControl                    ;
wire  [1:0]  Branch                        ;
wire  ALUSrcA                              ;
wire  ALuSrcB                              ;
wire  [4:0]  RegDst                        ;
wire  Extend                               ;
wire  PCtoReg                              ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

CU  u_CU (
    .op                      ( op          [5:0] ),
    .func                    ( func        [5:0] ),
    .zero                    ( zero              ),

    .MemtoReg                ( MemtoReg          ),
    .MemWrite                ( MemWrite          ),
    .RegWrite                ( RegWrite          ),
    .ALUControl              ( ALUControl  [4:0] ),
    .Branch                  ( Branch      [1:0] ),
    .ALUSrcA                 ( ALUSrcA           ),
    .ALuSrcB                 ( ALuSrcB           ),
    .RegDst                  ( RegDst      [4:0] ),
    .Extend                  ( Extend            ),
    .PCtoReg                 ( PCtoReg           )
);

endmodule