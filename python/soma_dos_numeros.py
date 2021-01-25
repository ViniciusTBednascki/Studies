x = int(input('escreva um número inteiro de qualquer dígito: '))
i=0
soma=0
end=0
while True:
    if end == 10:
        break
    if x//(10**i)%10 == 0:
        end +=1
    else:
        end=0
    y=x//(10**i)%10
    soma += y
    i += 1
print('a soma dos números é',soma)
