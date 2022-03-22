int main() {
	unsigned int a,b; // 无符号整数
	int c,d; // 有符号整数
	a = 10; // 内存中取数（？）
	b = 4;
	unsigned int out1 = a + b; // 无符号整数加法
	unsigned int out2 = a - b; // 无符号数减法
	unsigned int out3 = a & b; // 逻辑与
	unsigned int out4 = a | b; // 逻辑或
	unsigned int out5 = a ^ b; // 异或
	int out6 = 2 * c + 5 - d; // 有符号数运算
	// 循环结构的测试
	for(int i = 1; i <= 10; i++) {
		c = c + 1;
	}
}
