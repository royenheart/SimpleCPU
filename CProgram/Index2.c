void main() {
    int pd1 = 5;
    int temp = 2;
    int a, b;
    a = 10;
    b = 2;
    a = a - b;
    for (int i = 1; i < pd1; i = i + 1) {
        temp = b * temp;
        __asm__ __volatile__ (
		"sw %0, 2($0)"
		:"=r"(temp)
		);
    }
}