`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/05/27 19:34:16
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
module tb_Chip_InstrIP_Cache02;
// Chip_InstrIP_Cache02 Parameters
parameter PERIOD  = 10;

// Chip_InstrIP_Cache02 Inputs
reg   clk                                  ;
reg   rst                                  ;
// Chip_InstrIP_Cache02 Outputs
wire  [31:0]  instrExp                     ;
wire  [31:0]  PCExp                        ;
wire  [31:0]  IPCExp                       ;
wire  [31:0]  ExtendImmExp                 ;
wire  MemtoRegExp                          ;
wire  MemWriteExp                          ;
wire  RegWriteExp                          ;
wire  [4:0]  ALUControlExp                 ;
wire  [1:0]  BranchExp                     ;
wire  ALUSrcAExp                           ;
wire  ALUSrcBExp                           ;
wire  RegDstExp                            ;
wire  ExtendExp                            ;
wire  PCtoRegExp                           ;
wire  [4:0]  A3TempExp                     ;
wire  [4:0]  A3Exp                         ;
wire  [31:0]  RD1Exp                       ;
wire  [31:0]  RD2Exp                       ;
wire  [31:0]  SrcAExp                      ;
wire  [31:0]  SrcBExp                      ;
wire  ZeroExp                              ;
wire  [31:0]  ALUResultExp                 ;
wire  [31:0]  DataMemReadExp               ;
wire  [31:0]  WD3TempExp                   ;
wire  [31:0]  WD3Exp                       ;

initial 
begin
    clk = 1'b0;
    rst = 1'b1;
    forever 
    begin
        #(PERIOD/2) clk = ~clk;  
    end
end

Chip_InstrIP_Cache02  u_Chip_InstrIP_Cache02 (
    .clk                     ( clk                    ),
    .rst                     ( rst                    ),

    .instrExp                ( instrExp        [31:0] ),
    .PCExp                   ( PCExp           [31:0] ),
    .IPCExp                  ( IPCExp          [31:0] ),
    .ExtendImmExp            ( ExtendImmExp    [31:0] ),
    .MemtoRegExp             ( MemtoRegExp            ),
    .MemWriteExp             ( MemWriteExp            ),
    .RegWriteExp             ( RegWriteExp            ),
    .ALUControlExp           ( ALUControlExp   [4:0]  ),
    .BranchExp               ( BranchExp       [1:0]  ),
    .ALUSrcAExp              ( ALUSrcAExp             ),
    .ALUSrcBExp              ( ALUSrcBExp             ),
    .RegDstExp               ( RegDstExp              ),
    .ExtendExp               ( ExtendExp              ),
    .PCtoRegExp              ( PCtoRegExp             ),
    .A3TempExp               ( A3TempExp       [4:0]  ),
    .A3Exp                   ( A3Exp           [4:0]  ),
    .RD1Exp                  ( RD1Exp          [31:0] ),
    .RD2Exp                  ( RD2Exp          [31:0] ),
    .SrcAExp                 ( SrcAExp         [31:0] ),
    .SrcBExp                 ( SrcBExp         [31:0] ),
    .ZeroExp                 ( ZeroExp                ),
    .ALUResultExp            ( ALUResultExp    [31:0] ),
    .DataMemReadExp          ( DataMemReadExp  [31:0] ),
    .WD3TempExp              ( WD3TempExp      [31:0] ),
    .WD3Exp                  ( WD3Exp          [31:0] )
);
endmodule