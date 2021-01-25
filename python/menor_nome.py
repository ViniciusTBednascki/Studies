def menor_nome(lista_de_nomes):
    menor,tamanho,i = lista_de_nomes[0].strip().capitalize(),len(lista_de_nomes[0].strip()),0
    while tamanho == 0:
        tamanho = len(lista_de_nomes[i].strip())
        i +=1
    for nome in range(i+1,len(lista_de_nomes)):
        x = len(lista_de_nomes[nome].strip())
        if x < tamanho and x != 0 :
            menor,tamanho = lista_de_nomes[nome].strip().capitalize(),x
    return menor
    print('o menor nome é',menor)

def teste_pontual(frase,esperado):
    if menor_nome(frase) == esperado:
        print('teste da lista: ',frase,' passou.')
        print()
    else:
        print('teste da lista: ',frase,' falhou.')
        print(menor_nome(frase))
        print()
            
def teste_menor():
    listas,esperado = [['maria', 'josé', 'PAULO', 'Catarina'],['maria', ' josé  ', '  PAULO', 'Catarina  '],['Bárbara', 'JOSÉ  ', 'Bill']],'José'
    for i in range(len(listas)):
        teste_pontual(listas[i],esperado)    

teste_menor()    
    
