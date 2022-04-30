// CU控制信号宏定义
`define CUadd 12'b000000100000
`define CUaddu 12'b000000100001
`define CUsub 12'b000000100010
`define CUsubu 12'b000000100011
`define CUand 12'b000000100100
`define CUor 12'b000000100101
`define CUxor 12'b000000100110
`define CUnor 12'b000000100111
`define CUslt 12'b000000101010
`define CUsltu 12'b000000101011
`define CUsll 12'b000000000000
`define CUsrl 12'b000000000010
`define CUsra 12'b000000000011
`define CUsllv 12'b000000000100
`define CUsrlv 12'b000000000110
`define CUsrav 12'b000000000111
`define CUjr 12'b000000001000
`define CURcal 6'b000000
`define CUaddi 6'b001000
`define CUaddiu 6'b001001
`define CUandi 6'b001100
`define CUori 6'b001101
`define CUxori 6'b001110
`define CUlui 6'b001111
`define CUlw 6'b100011
`define CUsw 6'b101011
`define CUbeq 6'b000100
`define CUbne 6'b000101
`define CUslti 6'b001010
`define CUsltiu 6'b001011
`define CUj 6'b000010
`define CUjal 6'b000011
`define CUmul 12'b011100000010
`define CUmulop 12'b011100

`define InitState 4'b1111   //初始状态
// 取值阶段 - Start
`define IF 4'b0000          //取指
// 取值阶段 - End
// 译码阶段 - Start
`define ID 4'b0001          //译码
// 译码阶段 - End
// 执行阶段 - Start
`define EXER 4'b0010        //执行：R型计算类
`define EXEI 4'b0100        //执行：I型计算类
`define EXEB 4'b0110        //执行：beq bne
`define EXEW 4'b0111        //执行：lw sw
`define WBJAR 4'b1011       //写回：jar
// 执行阶段 - End
// 存储器访问阶段 - Start
`define WBR 4'b0011         //写回：R型计算类
`define WBI 4'b0101         //写回：I型计算类
`define MEMLW 4'b1000       //访存：lw
`define MEMSW 4'b1010       //访存：sw
// 存储器访问阶段 - End
// 写回阶段 - Start
`define WBLW 4'b1001        //写回：lw
// 写回阶段 - End