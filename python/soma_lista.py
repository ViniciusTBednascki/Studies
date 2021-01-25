import time
def soma_lista(lista):
    if len(lista) == 0:
        return 0
    elif len(lista) == 1:
        return lista[0]
    else:
        meio = len(lista)//2
        direita = soma_lista(lista[meio:])
        esquerda = soma_lista(lista[:meio])
        return direita+esquerda
    
def somalista(lista):
    soma = 0
    for i in lista:
        soma += i
    return soma

