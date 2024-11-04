#include <stdio.h>

int nwd(int a, int b) {
    int c;
    while (b != 0) {
        c = a % b;
        a = b;
        b = c;
    }

    return (a < 0) ? -a : a; 
}

int main() {
    int a, b;

    printf("Podaj pierwszą liczbę: ");
    scanf("%d" ,&a);
    printf("Podaj drugą liczbę: ");
    scanf("%d" ,&b);

    printf("NWD: %d\n", nwd(a, b));
}