def incomodam(n):
    if n < 1:
        return ''
    elif n == 1:
        return 'incomodam '
    else:
        return incomodam(n-1)+'incomodam '
def elefantes(n):
    if n < 1:
        return ''
    elif n == 1:
        return "Um elefante incomoda muita gente\n"
    elif n == 2:
        return elefantes(n-1)+str(n)+' elefantes '+incomodam(n)+'muito mais\n'
    else:
        return elefantes(n-1)+str(n-1)+' elefantes incomodam muita gente\n'+str(n)+' elefantes '+incomodam(n)+'muito mais\n'
    
    
