// ALU操作信号宏定义
/// 有符号加法
`define ALUSignPlus 5'b00000
/// 无符号加法
`define ALUZeroPlus 5'b00001
/// 有符号减法
`define ALUSignSub 5'b00010
/// 无符号减法
`define ALUZeroSub 5'b00011
/// 逻辑与
`define ALUAnd 5'b00100
/// 逻辑或
`define ALUOr 5'b00101
/// 异或
`define ALUXor 5'b00110
/// 或非
`define ALUNor 5'b00111
/// 有符号小于判断
`define ALUSignLess 5'b01000
/// 无符号小于判断
`define ALUZeroLess 5'b01001
/// 逻辑左移
`define ALULogicMLeft 5'b01010
/// 逻辑右移
`define ALULogicMRight 5'b01011
/// 算术右移
`define ALUMathMRight 5'b01100
/// lui
`define ALULui 5'b01111
/// 判断等于（条件分支）
`define ALUEqual 5'b01101
/// 判断不等于（条件分支）
`define ALUNotEqual 5'b01110 
/// 乘法
`define ALUMul 5'b10000
/// NONE(ALU不进行操作)
`define NONE 5'b11111
