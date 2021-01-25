A = int(input("digite a altura do retângulo:"))
L = int(input("digite a largura do retângulo:"))
y=1
while y <= L:
    x = 1
    while x <= A:
        if 1 < y < L and 1 < x < A:
            print(" ", end="")
        else:
            print("#", end="")
        x += 1
    print()
    y += 1
