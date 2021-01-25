def ordena(lista):
    for i in range(len(lista)-1):
        menor_numero = lista[i]
        for j in range(i+1,len(lista)):
            if lista[j] < menor_numero:
                menor_numero = lista[j]
                lista[i],lista[j] = lista[j],lista[i]
    return lista
