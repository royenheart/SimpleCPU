`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/03/21 22:53:35
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
module Chip_InstrIP_test;

// Chip_InstrIP Parameters
parameter PERIOD  = 10;

// Chip_InstrIP Outputs
wire  [31:0]  instr                        ;
wire  [31:0]  IPC                          ;
wire  [31:0]  PC                           ;
wire  [31:0]  ExtendImm                    ;
wire  MemtoReg                             ;
wire  MemWrite                             ;
wire  RegWrite                             ;
wire  [4:0]  ALUControl                    ;
wire  [1:0]  Branch                        ;
wire  ALUSrcA                              ;
wire  ALUSrcB                              ;
wire  [4:0]  RegDst                        ;
wire  Extend                               ;
wire  PCtoReg                              ;
wire  [4:0]  A3Temp                        ;
wire  [4:0]  A3                            ;
wire  [31:0]  RD1                          ;
wire  [31:0]  RD2                          ;
wire  [31:0]  SrcA                         ;
wire  [31:0]  SrcB                         ;
wire  Zero                                 ;
wire  [31:0]  ALUResult                    ;
wire  [31:0]  DataMemRead                  ;
wire  [31:0]  WD3Temp                      ;
wire  [31:0]  WD3                          ;
wire  [31:0]  PCPlus4                      ;
wire  [31:0]  PCPlusExtend                 ;
wire  [31:0]  PCPlusAddr                   ;
reg           clk                          ;
wire          cclk;

assign cclk = clk;

initial 
begin
    clk = 1'b0;
    forever 
    begin
        #(PERIOD/2) clk = ~clk;  
    end
end

Chip_InstrIP #(
    .PERIOD ( PERIOD ))
 u_Chip_InstrIP (
    .instrExp                   ( instr         [31:0] ),
    .IPCExp                     ( IPC           [31:0] ),
    .PCExp                      ( PC            [31:0] ),
    .ExtendImmExp               ( ExtendImm     [31:0] ),
    .MemtoRegExp                ( MemtoReg             ),
    .MemWriteExp                ( MemWrite             ),
    .RegWriteExp                ( RegWrite             ),
    .ALUControlExp              ( ALUControl    [4:0]  ),
    .BranchExp                  ( Branch        [1:0]  ),
    .ALUSrcAExp                 ( ALUSrcA              ),
    .ALUSrcBExp                 ( ALUSrcB              ),
    .RegDstExp                  ( RegDst        [4:0]  ),
    .ExtendExp                  ( Extend               ),
    .PCtoRegExp                 ( PCtoReg              ),
    .A3TempExp                  ( A3Temp        [4:0]  ),
    .A3Exp                      ( A3            [4:0]  ),
    .RD1Exp                     ( RD1           [31:0] ),
    .RD2Exp                     ( RD2           [31:0] ),
    .SrcAExp                    ( SrcA          [31:0] ),
    .SrcBExp                    ( SrcB          [31:0] ),
    .ZeroExp                    ( Zero                 ),
    .ALUResultExp               ( ALUResult     [31:0] ),
    .DataMemReadExp             ( DataMemRead   [31:0] ),
    .WD3TempExp                 ( WD3Temp       [31:0] ),
    .WD3Exp                     ( WD3           [31:0] ),
    .PCPlus4Exp                 ( PCPlus4       [31:0] ),
    .PCPlusExtendExp            ( PCPlusExtend  [31:0] ),
    .PCPlusAddrExp              ( PCPlusAddr    [31:0] ),
    .clk                        ( clk                  )
);

endmodule