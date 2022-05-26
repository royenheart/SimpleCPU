#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main() {
    srand((unsigned)time(NULL));
    char a[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    FILE *file;
    file = fopen("random.txt", "w+");
    char *txt = (char*)malloc(sizeof(char) * 9);
    for(int i = 1; i <= 400; i++) {
        memset(txt, 0, 9 * sizeof(char));
        for(int j = 1; j <= 8; j++) {
            strncat(txt, (const char*)&a[rand() % 16], 1);
        }
        strncat(txt, "\n", 1);
        fprintf(file, txt);
    }
    fclose(file);
    return 0;
}