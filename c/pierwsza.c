#include <stdio.h>
#include <math.h>

int is_prime(unsigned n) {
    if ( n==2 || n==3 || n==5 ) { return 1; }

    if ( n==1 || n%2==0 || n%3==0 || n%5==0 ) { return 0; }

    unsigned i = 6;
    unsigned k = sqrt(n);

    while (i <= k) {
        if ( n%(i+1)==0 || n%(i+5)==0 ) { return 0; }
        i += 6;
    }

    return 1;
}

int main() {
    unsigned n;

    printf("Podaj liczbę: ");
    scanf("%d", &n);

    printf("%d %s\n", n, is_prime(n) ? "jest liczbą pierwszą" : "nie jest liczbą pierwsza");

    return 0;
}
