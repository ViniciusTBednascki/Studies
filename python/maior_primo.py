def primo(x):
    i = 2
    primo = True
    while primo and i < x:
        y = x%i
        if y == 0:
            primo = False
        i += 1
    if primo:
        return x
    else:
        return 0
def maior_primo(x):
    i=x
    n=0
    while n == 0:
        n = primo(i)
        i -= 1
    return n

    
