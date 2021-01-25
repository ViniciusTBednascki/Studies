x = 1
valores = []
while x != 0:
    x = int(input("digite os valores:"))
    valores.append(x)
y = len(valores) - 2
while y >= 0:
    print(valores[y])
    y -= 1

