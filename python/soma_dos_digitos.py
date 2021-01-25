x = int(input('digite um número inteiro: '))
i=0
soma=0
end=0
while end != 10:
    if x//(10**i)%10 == 0:
        end +=1
    else:
        end=0
    y=x//(10**i)%10
    soma += y
    i += 1
print(soma)
