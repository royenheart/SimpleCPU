void main() {
    int shamt;
    int a, b;
    a = 10;
    b = 10;
    int c = a + b;
    __asm__ __volatile__ (
    "sw %[des], 0($0)\n\t"
    :[des]"=r"(c)
    );
}