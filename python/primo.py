def primo(x):
    i = 2
    primo = True
    while primo and i < x:
        y = x%i
        if y == 0:
            primo = False
        i += 1
        
n= int(input('digite um número inteiro: '))
while n > 0:
    if primo(n) == True:
        print(n,"é primo")
    else:
        print(n,"não é primo")
        n = int(input('digite um número inteiro: '))
