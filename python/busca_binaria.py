def busca(lista,x):
    primeiro = 0
    ultimo = len(lista)-1

    while primeiro <= ultimo:
        meio = (primeiro+ultimo)//2
        print(meio)
        if lista[meio] == x:
            return meio
        else:
            if x > lista[meio]:
                primeiro = meio+1
            else:
                ultimo = meio-1
    return False
    



