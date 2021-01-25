def fatorial(x):
    fatorial=1
    i = x
    while i > 1:
        fatorial *= i
        i -= 1
    return fatorial
def binomial(x,y):
    return(fatorial(x)//(fatorial(y) * fatorial(x-y)))
