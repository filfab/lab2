def nwd(a, b):
    while b != 0 :
        c = a % b
        a, b = b, c

    return abs(a)


def main():
    a = int(input('Podaj pierwszą liczbę: '))
    b = int(input('Podaj drugą liczbę: '))

    print(f"NWD: { nwd(a, b) }")


if __name__ == '__main__':
    main()
