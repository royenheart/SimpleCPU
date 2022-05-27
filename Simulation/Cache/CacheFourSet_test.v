`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/26 16:02:36
// Design Name: 
// Module Name: CacheFourSet_test
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


module CacheFourSet_test(

    );
parameter PERIOD  = 20;

reg clk = 1;
reg [10:0] A = 0;
reg [31:0] WD = 0;
reg WE = 0;
wire [31:0] RD;
reg RE =1;

DataMemFourSetCache01 datamemfoursetcache(
    .clk        (clk),
    .A          (A),
    .WD         (WD),
    .WE         (WE),
    .RD         (RD),
    .RE         (RE)
);

initial 
begin
    forever 
    begin
        #(PERIOD/2) clk = ~clk;  
    end
end

initial begin
    forever begin
        #(PERIOD) A = A+ (({$random}%5)+1)*4;
        if(A > 500) begin
            A = ({$random}%100)*4;
        end
    end
end

initial 
begin

end 
endmodule
