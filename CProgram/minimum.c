// 求斐波那契数列
void main() {
	int a, b;
	int shamt = 0;
	int pd1 = 10;
	int pd2 = 0;

	// 内联汇编，从地址为0，1的数据存储单元中读入数据至a，b
	__asm__ __volatile__ (
	"lw %[des1], 0($0)\n\t"
	"lw %[des2], 1($0)\n\t"
	:[des1]"=r"(a),[des2]"=r"(b)
	);
	
	int i;
	for (i=0; i < pd1; i = i + 1) {
		int temp;
		temp = a + b;
		// 内联汇编，将temp存入地址为2的数据存储单元中
		__asm__ __volatile__ (
		"sw %0, 2($0)"
		:"=r"(temp)
		);
		a = b;
		b = temp;
	}
	// 测试与或非
	a = a & b;
	a = a | b;
	a = a ^ b;
	if (a > pd2) {
		b = 0;
	}
	// 测试移位
	unsigned int c, d;
	c = 10;
	a = a << 1;
	c = c >> 1U;
	b = b >> 1;
	b = 1;
	d = 1;
	a = a << b;
	c = c >> d;
	b = b << b;
}