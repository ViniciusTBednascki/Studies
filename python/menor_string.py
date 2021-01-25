def menor_lex(lista_de_strings):
    menor = lista_de_strings[0].strip()
    i = 0
    while menor == '':
        menor = lista_de_strings[i].strip()
        i += 1
    for i in lista_de_strings:
        x = i.strip()
        if x <= menor and x != '':
            menor = x
    return menor

def teste_pontual(lista,certo):
    if menor_lex(lista) == certo:
        print('o teste de',lista,'funcionou')
    else:
        print('o teste de',lista,'falhou')

def teste_menor():
    teste_pontual(['maçã','Mamão','banana','Pera',''],'Mamão')
    teste_pontual(['João','maria','José','     ','   Abraão'],'Abraão')
    teste_pontual(['','  Caneta  ','tesoura ','Borracha',' Caderno','Apagador'],'Apagador')
    teste_pontual(['oĺá', 'A', 'a', 'casa'],'A')
    teste_pontual(['AAAAAA', 'b'],'AAAAAA')
teste_menor()
