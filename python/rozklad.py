def main():
    def write(base, exp):
        nonlocal sep
        if exp > 1:
            print(f'{sep}{base}^{exp}', end='')
            if sep == '': sep = '*'
        elif exp == 1:
            print(f'{sep}{base}', end='')
            if sep == '': sep = '*'


    def count(factor):
        nonlocal n
        counter = 0
        while n%factor == 0:
            counter += 1
            n //= factor
        return counter


    n = int(input('Podaj liczbę: '))
    sep = ''
    d = 3

    print(f'{n}=', end='')
    write(2, count(2))
    while n > 1:
        write(d, count(d))
        d += 2
    print('')


if __name__ == '__main__':
    main()
