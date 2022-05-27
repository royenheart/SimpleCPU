`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/05/26 14:15:59
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
module Cache02Instr_wrapper_test;
// Cache02Instr_wrapper Parameters
parameter PERIOD  = 10;

// Cache02Instr_wrapper Inputs
reg   [31:0]  A                            = 0 ;
reg   InstrMemRW                           = 1 ;
reg   clk                                  = 0 ;
// Cache02Instr_wrapper Outputs
wire  [31:0]  RD                           ;
wire  hit                                  ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    forever begin
        #(PERIOD) A = A + (({$random} % 5) + 1) * 4;
        if (A > 500) begin 
            A = ({$random} % 100) * 4;
        end
    end
end

Cache02Instr_wrapper  u_Cache02Instr_wrapper (
    .A                       ( A           [31:0] ),
    .InstrMemRW              ( InstrMemRW         ),
    .clk                     ( clk                ),

    .RD                      ( RD          [31:0] ),
    .hit                     ( hit                )
);

endmodule