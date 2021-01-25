import random
def lista_grande(n):
    return [random.randrange(1000)for i in range(n)]

def insertion_sort(lista):
    for i in range(1,len(lista)):
        valor = lista[i]
        x = i-1
        while x >=0 and (valor < lista[x]):
            lista[x+1],lista[x] = lista[x],valor
            x = x-1
    return lista
