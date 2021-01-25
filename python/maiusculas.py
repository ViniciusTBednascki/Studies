def maiusculas(frase):
    string = ''
    for i in range(len(frase)):
        x = ord(frase[i])
        if x >= 65 and x<= 90:
            string += frase[i]
    return string
def teste_pontual(frase,esperado):
    if maiusculas(frase) == esperado:
        print('teste da frase: '+frase+' passou.')
        print()
    else:
        print('teste da frase: '+frase+' falhou.')
        print()

def teste_maiusculas():
    testes = {'Programamos em python 2?':'P','Programamos em Python 3.':'PP','PrOgRaMaMoS em python!':'PORMMS'}
    for frase in testes:
        teste_pontual(frase,testes[frase])
        
