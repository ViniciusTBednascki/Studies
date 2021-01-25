def n_primos(n):
    x = 2
    nprimos = 0
    while x <= n:
        if primo(x):
            nprimos = nprimos + 1
        x += 1
    return nprimos

def primo(n):
    x=2
    while x <= n/2:
        if n % x == 0:
            return False
        x += 1
    return True
            
