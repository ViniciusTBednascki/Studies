a=float(input('qual o número multiplicando x²? '))
b=float(input('qual o número multiplicando x? '))
c=float(input('qual o número sem nenhuma variável? '))

if a == 0:
    
    print('essa não é uma equação quadrática')

else:
    
    delta = (b**2) - (4*a*c)
    
    if delta < 0:
        
        print('esta equação não possuí raízes reais')
        
    else:

        if delta == 0:
            
            x = -b/(2*a)
            print('a raíz desta equação é',x)

        else:
            if a > 0:
                x = -b - delta**0.5/(2*a)
                y = -b + delta**0.5/(2*a)
                print('as raízes da equação são',x,'e',y)
            else:
                x = -b + delta**0.5/(2*a)
                y = -b - delta**0.5/(2*a)
                print('as raízes da equação são',x,'e',y)
