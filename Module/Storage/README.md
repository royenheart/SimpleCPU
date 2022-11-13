# Storage 设计要求

1. 寄存器堆、数据存储使用 Distributed Memory Generator 或 BRAM 生成数据存储。

Block Design 可根据上述要求进行生成设计，并修改 wrapper 中对应部分的对 Block Design 的引用。