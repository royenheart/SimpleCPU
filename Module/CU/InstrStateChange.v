`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RoyenHeart、Ruoxuan Wang
// 
// Create Date: 2022/03/06 18:58:34
// Design Name: 
// Module Name: CU_Pipeline
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

// 设置头文件定义，若遇到符号未定义，请尝试修改路径
`include "../headers/DefineCU.vh"

// 指令状态改变模块
module InstrStateChange(
    trigger,
    State, op, opfunc,
    NextState
);

// 触发器
input trigger;
input State;
input op;
input opfunc;
output NextState;

wire trigger;
wire [3:0] State;
wire [5:0] op;
wire [11:0] opfunc;
reg  [3:0] NextState;

initial begin
    NextState = `IF;
end

always @(trigger)
begin
    case(State)
        `InitState: NextState <= `IF;
        `IF: NextState <= `ID;
        `ID:begin
            case(op)
                `CURcal:
                begin
                    case(opfunc)
                        `CUadd, `CUaddu, `CUsub, `CUsubu, `CUand, `CUor, `CUxor, `CUnor, `CUslt, `CUsltu, `CUsll, `CUsrl, `CUsra, `CUsllv, `CUsrlv, `CUsrav: NextState <= `EXER;
                        `CUjr: NextState <= `IF;
                    endcase
                end
                `CUaddi, `CUaddiu, `CUandi, `CUori, `CUxori, `CUlui, `CUslti, `CUsltiu: NextState <= `EXEI;
                `CUbeq, `CUbne: NextState <= `EXEB;
                `CUlw, `CUsw: NextState <= `EXEW;
                `CUjal: NextState <= `WBJAR;
                `CUj: NextState <= `IF;
                `CUmulop: NextState <= `EXER;
            endcase
        end
        `EXER: NextState <= `WBR;
        `WBR: NextState <= `IF;
        `EXEI: NextState <= `WBI;
        `WBI: NextState <= `IF;
        `EXEB: NextState <= `IF;
        `EXEW:
        begin
            case(op)
                `CUlw: NextState <= `MEMLW;
                `CUsw: NextState <= `MEMSW;
            endcase
        end
        `MEMLW: NextState <= `WBLW;
        `WBLW: NextState <= `IF;
        `MEMSW: NextState <= `IF;
        `WBJAR: NextState <= `IF;
        default: NextState <= `IF;
    endcase
end

endmodule
