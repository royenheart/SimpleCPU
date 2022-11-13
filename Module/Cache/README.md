# Cache 设计要求

1. 使用双端口BRAM/两个BRAM
2. 指令存储和数据存储均设置为2kB，宽度8bits，深度2048
3. 设计4路组相联Cache，块和Cache Line大小为16Bytes，共16槽，分为4组，Cache实际存储大小256Bytes，由于Cache一次取4bytes，因此偏移地址4位但是一定是0、4、8、12（即最后两位必定为00），index2位，tag5位（由于是2kB实际只需要11位地址）
4. 设计4路组相联Cache，块和Cache Line大小为8Bytes，共32槽，分为8组，Cache实际存储大小为256Bytes，Cache一次取4Bytes，因此偏移地址3位但是一定是0、4（最后两位必为00），index3位，tag5位（2kB实际只需要11位地址）
5. 设计直接相联Cache，块和Cache Line大小均为8Bytes，共16槽，Cache实际存储大小为128Bytes，index4为，tag4位，块内偏移地址3位。由于取数据一次取4Bytes，因此3位偏移地址一定是0、4（即最后两位必为00）。
6. 不设计MMU（内存管理单元，包括TLB和页表）。

Block Design 可根据上述要求进行生成设计，并修改 wrapper 中对应部分的对 Block Design 的引用。