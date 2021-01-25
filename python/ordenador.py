import cria_lista
import time

class ordenador:
    def sequencial(self,lista):
        for i in range(len(lista)-1):
            menor = lista[i]
            for j in range(i+1,len(lista)):
                if lista[j] < menor:
                    menor = lista[j]
                    lista[j],lista[i] = lista[i],lista[j]
        return lista
    def bolha(self,lista):
        for i in range(len(lista)-1,0,-1):
            for j in range(i):
                alteração = False
                if lista[j+1] < lista[j]:
                    lista[j+1],lista[j] = lista[j],lista[j+1]
                    alteração = True
            if not alteração:
                return lista
        return lista

def lista_aleatória(tamanho_da_lista):
    return cria_lista.lista_grande(tamanho_da_lista)
    
class contatempo:
    def compara_listas(self,tamanho_da_lista):
        lista1 = lista_aleatória(tamanho_da_lista)
        lista2 = lista1[:]
        o = ordenador()
        antes = time.time()
        o.sequencial(lista1)
        depois = time.time()
        print('o ordenador sequencial demorou',depois - antes)
        antes = time.time()
        o.bolha(lista2)
        depois = time.time()
        print('o ordenador bolha demorou',depois - antes)
    
def seleciona_ordenador(lista):
    o = ordenador()
    s = input('selecione ordenador[sequencial/bolha]: ')
    print()
    if s == 'sequencial':
        antes = time.time()
        o.sequencial(lista)
        depois = time.time()
        x = 'sequencial'
        tempo = depois - antes
        return lista,x,tempo
    elif s == 'bolha':
        antes = time.time()
        o.bolha(lista)
        depois = time.time()
        x = 'bolha'
        tempo = depois - antes
        return lista,x,tempo

def limpa_repetições(lista):
    nova_lista = lista[:]
    antes = time.time()
    for i in range(len(nova_lista)-1,0,-1):
        if nova_lista[i-1] == nova_lista[i]:
            del nova_lista[i]
    depois = time.time()
    tempo = depois - antes
    return nova_lista,tempo
        
def teste_ordenador():
    n = int(input('digite o tamanho da lista a ser testada:'))
    print()
    lista = lista_aleatória(n)
    print('lista aleatória com '+str(n)+' números: '+str(lista))
    print()
    lista,x,tempo = seleciona_ordenador(lista)
    print('lista ordenada utilizando o ordenador '+x+': '+str(lista))
    print()
    print('o ordenador '+str(x)+' demorou '+str(tempo)+' para ordenar a lista')
    print()
    lista_sem_repetições,tempo2 = limpa_repetições(lista)
    print('lista sem repetições: '+str(lista_sem_repetições))
    print()
    print('número de repetições: '+str(len(lista)-len(lista_sem_repetições)))
    print()
    print('o programa demorou '+str(tempo)+' para retirar as repetições')
