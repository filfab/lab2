import math

def is_prime(n):
    if n in { 2, 3, 5 }:
        return True

    if n == 1 or 0 in { n%2, n%3, n%5 }:
        return False

    i = 6
    k = int(math.sqrt(n))

    while i <= k:
        if n%(i+1)==0 or n%(i+5)==0:
            return False
        i += 6

    return True


def main():
    n = int(input('Podaj liczbę: '))

    print(f'{n} jest liczbą pierwszą' if is_prime(n) else f'{n} nie jest liczbą pierwszą')


if __name__ == '__main__':
    main()
