def encontra_impares(lista):
    if len(lista) == 1:
        return lista
    
    meio = len(lista)//2
    esquerda = impares(lista[:meio])
    direita = impares(lista[meio:])    
    return merge(esquerda,direita)

def merge(esquerda,direita):
    if not esquerda:
        return direita
    if not direita:
        return esquerda
    if esquerda[0]%2 == 0:
        return merge(esquerda[1:],direita)
    elif direita[0]%2 == 0:
        return merge(esquerda,direita[1:])
    else:
        return esquerda + direita
