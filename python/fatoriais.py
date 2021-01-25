def fatoriais():
    x = 1    
    while x != 0:
        x = int(input("digite um numero ou zero: "))
        fatorial = 1
        while x < 0:
            print('impossivel calcular')
            x = int(input("digite um numero ou zero: "))
        fatorial(x)
        print(x,"! =",fatorial)
def fatorial(x):
    y = x
    while y > 1:
            fatorial *= y
            y -= 1
fatoriais()
