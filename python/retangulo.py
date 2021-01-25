A = int(input("digite a altura do retângulo:"))
L = int(input("digite a largura do retângulo:"))
y=1
while y <= L:
    x = 1
    while x <= A:
        print("#", end="")
        x += 1
    print()
    y += 1
