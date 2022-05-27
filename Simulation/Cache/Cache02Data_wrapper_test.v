`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 2022/05/26 14:15:09
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
module Cache02Data_wrapper_test;
// Cache02Data_wrapper Parameters
parameter PERIOD  = 10;

// Cache02Data_wrapper Inputs
reg   [31:0]  A                            = 0 ;
reg   MemWrite                             = 0 ;
reg   clk                                  = 0 ;
reg   [31:0]  WD                           = 0 ;
// Cache02Data_wrapper Outputs
wire  [31:0]  DataMemRead                  ;
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
    // forever begin
    //     #(PERIOD) A = A + 4;
    //     if (A > 400) begin
    //         A = ({$random} % 100) * 4;
    //     end
    // end
end

Cache02Data_wrapper  u_Cache02Data_wrapper (
    .A                       ( A            [31:0] ),
    .MemWrite                ( MemWrite            ),
    .clk                     ( clk                 ),
    .WD                      ( WD           [31:0] ),

    .DataMemRead             ( DataMemRead  [31:0] ),
    .hit                     ( hit                 )
); 

endmodule