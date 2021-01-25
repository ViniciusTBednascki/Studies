x = int(input('escreva um número inteiro de qualquer dígito: '))
anterior=10
valor=1
NumeroIgual = False
i=0
while not NumeroIgual and 10**i < x:
    valor=x//(10**i)%10
    if valor == anterior and 10**i < x:
        NumeroIgual = True
    anterior = valor
    i += 1
if NumeroIgual:
    print('sim')
else:
    print('não')
