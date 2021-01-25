def soma_hipotenusas(n):
    x = 1
    z = 0
    while x <= n:
        if hipotenusa_inteira(x):
            z += x
        x += 1
    return z

def hipotenusa_inteira(n):
    a = 1
    while a < n:
        b = ((n**2) - (a**2))**(1/2)
        if b % 1 == 0:
            return True
        a += 1 
    return False

            
