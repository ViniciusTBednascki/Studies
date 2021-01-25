def conta_letras(frase,contar='vogais'):
    if contar == 'vogais':
        n = 0
        for i in range(len(frase)):
            x = frase[i].lower()
            if x== 'a' or x== 'e' or x== 'i' or x== 'o' or x== 'u':
                n += 1
        return n
    else:
        if contar == 'consoantes':
            n = 0
            for i in range(len(frase)):
                x = frase[i].lower()
                if x!= 'a' and x!= 'e' and x!= 'i' and x!= 'o' and x!= 'u' and x!= ' ':
                    n += 1
            return n
        else:
            print('contagem não definida')
