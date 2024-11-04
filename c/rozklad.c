#include <stdio.h>

void write(char* sep, int base, int exp) {
    if (exp > 1) {
        printf("%c%d^%d", *sep, base, exp);
        if (*sep == '\0') { *sep = '*'; }
    } else if (exp == 1) {
        printf("%c%d", *sep, base);
        if (*sep == '\0') { *sep = '*'; }
    }
}

int count(int* n, int factor) {
    int counter = 0;
    while ( *n%factor == 0 ) {
        counter++;
        *n /= factor;
    }
    return counter;
}

int main() {
    int n, d=3;
    char sep='\0';

    printf("Podaj liczbę: ");
    scanf("%d", &n);

    printf("%d=", n);
    write(&sep, 2, count(&n, 2));
    while (n > 1) {
        write(&sep, d, count(&n, d));
        d += 2;
    }
    printf("\n");

    return 0;
}
