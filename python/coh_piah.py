import re

def le_assinatura():
    '''A funcao le os valores dos tracos linguisticos do modelo e devolve uma assinatura a ser comparada com os textos fornecidos'''
    print("Bem-vindo ao detector automático de COH-PIAH.")
    print('\n')
    wal = float(input("Entre o tamanho medio de palavra:"))
    ttr = float(input("Entre a relação Type-Token:"))
    hlr = float(input("Entre a Razão Hapax Legomana:"))
    sal = float(input("Entre o tamanho médio de sentença:"))
    sac = float(input("Entre a complexidade média da sentença:"))
    pal = float(input("Entre o tamanho medio de frase:"))

    return [wal, ttr, hlr, sal, sac, pal]

def le_textos():
    i = 1
    textos = []
    texto = input("Digite o texto " + str(i) +" (aperte enter para sair):")
    while texto:
        textos.append(texto)
        i += 1
        texto = input("Digite o texto " + str(i) +" (aperte enter para sair):")
    print()
    return textos

def separa_sentencas(texto):
    '''A funcao recebe um texto e devolve uma lista das sentencas dentro do texto'''
    sentencas = re.split(r'[.!?]+', texto)
    if sentencas[-1] == '':
        del sentencas[-1]
    return sentencas

def separa_frases(sentenca):
    '''A funcao recebe uma sentenca e devolve uma lista das frases dentro da sentenca'''
    return re.split(r'[,:;]+', sentenca)

def separa_palavras(frase):
    '''A funcao recebe uma frase e devolve uma lista das palavras dentro da frase'''
    return frase.split()

def n_palavras_unicas(lista_palavras):
    '''Essa funcao recebe uma lista de palavras e devolve o numero de palavras que aparecem uma unica vez'''
    freq = dict()
    unicas = 0
    for palavra in lista_palavras:
        p = palavra.lower()
        if p in freq:
            if freq[p] == 1:
                unicas -= 1
            freq[p] += 1
        else:
            freq[p] = 1
            unicas += 1

    return unicas

def n_palavras_unicas_total(texto):
    '''Essa funcao recebe um texto e devolve o numero de palavras diferentes utilizadas no texto'''
    sentencas = separa_sentencas(texto)
    total_palavra = []
    for sentenca in sentencas:
        frases= separa_frases(sentenca)
        for frase in frases:
            lista_palavras= separa_palavras(frase)
            for palavra in lista_palavras:
                total_palavra.append(palavra)
    return n_palavras_unicas(total_palavra)

def n_palavras_diferentes(lista_palavras):
    '''Essa funcao recebe uma lista de palavras e devolve o numero de palavras diferentes utilizadas'''
    freq = dict()
    for palavra in lista_palavras:
        p = palavra.lower()
        if p in freq:
            freq[p] += 1
        else:
            freq[p] = 1

    return len(freq)

def n_palavras_diferentes_total(texto):
    '''Essa funcao recebe um texto e devolve o numero de palavras diferentes utilizadas no texto'''
    sentencas = separa_sentencas(texto)
    total_palavra = []
    for sentenca in sentencas:
        frases= separa_frases(sentenca)
        for frase in frases:
            lista_palavras= separa_palavras(frase)
            for palavra in lista_palavras:
                total_palavra.append(palavra)
    return n_palavras_diferentes(total_palavra)

def n_letras(palavra):
    '''Essa funcao recebe uma palavra e devolve o numero de letras na palavra'''
    n_letras = 0
    
    x = re.compile(r'.')
    
    letras = x.finditer(palavra)
    
    for letra in letras:
        n_letras += 1

    return n_letras

def n_letras_total(texto):
    '''Essa funcao recebe um texto e devolve o numero total de letras no texto'''
    sentencas = separa_sentencas(texto)
    i = 0
    for sentenca in sentencas:
        frases= separa_frases(sentenca)
        for frase in frases:
            lista_palavras= separa_palavras(frase)
            for palavra in lista_palavras:
                i += n_letras(palavra)
    return i


def n_palavras_total(texto):
    '''Essa funcao recebe um texto e devolve o numero total de palavras no texto'''
    sentencas = separa_sentencas(texto)
    i = 0
    for sentenca in sentencas:
        frases= separa_frases(sentenca)
        for frase in frases:
            lista_palavras= separa_palavras(frase)
            for palavra in lista_palavras:
                i += 1
    return i

def n_sentencas(texto):
    i = 0
    sentencas = separa_sentencas(texto)
    for sentenca in sentencas:
        i += 1 
    return i

def n_letras_sentencas(texto):
    i = 0
    sentencas = separa_sentencas(texto)
    for sentenca in sentencas:
        i += n_letras(sentenca)
    return i

def n_frases(texto):
    sentencas = separa_sentencas(texto)
    i = 0
    for sentenca in sentencas:
        frases= separa_frases(sentenca)
        for frase in frases:
            i += 1
    return i

def n_letras_frases(texto):
    i = 0
    sentencas = separa_sentencas(texto)
    for sentenca in sentencas:
        frases= separa_frases(sentenca)
        for frase in frases:
            i += n_letras(frase)
    return i
        
def media_palavras(texto):
    '''Essa funcao recebe um texto e retorna o tamanho medio das palavras no texto'''
    media = n_letras_total(texto)/n_palavras_total(texto)
    return media

def type_token(texto):
    '''Essa funcao recebe um texto e retorna a relacao Type-Token do texto'''
    type_token = n_palavras_diferentes_total(texto)/n_palavras_total(texto)
    return type_token

def hapax(texto):
    hapax = n_palavras_unicas_total(texto)/n_palavras_total(texto)
    return hapax

def media_sentenca(texto):
    media = n_letras_sentencas(texto)/n_sentencas(texto)
    return media

def complexidade(texto):
    complexidade = n_frases(texto)/n_sentencas(texto)
    return complexidade

def media_frase(texto):
    media = n_letras_frases(texto)/n_frases(texto)
    return media
    
def compara_assinatura(as_a, as_b):
    '''Essa funcao recebe duas assinaturas de texto e deve devolver o grau de similaridade nas assinaturas.'''
    soma = 0
    for i in range(len(as_a)):
       soma += abs(as_a[i]-as_b[i])
    S = soma/len(as_a)
    return S

def calcula_assinatura(texto):
    '''Essa funcao recebe um texto e deve devolver a assinatura do texto.'''
    assinatura = [media_palavras(texto),type_token(texto),hapax(texto),media_sentenca(texto),complexidade(texto),media_frase(texto)]
    return assinatura

def avalia_textos(textos, ass_cp):
    '''IMPLEMENTAR. Essa funcao recebe uma lista de textos e deve devolver o numero (1 a n) do texto com maior probabilidade de ter sido infectado por COH-PIAH.'''
    S =[]
    x = 10**3
    i = 1
    texto_infectado = 0
    for texto in textos:
        ass_texto = calcula_assinatura(texto)
        c = compara_assinatura(ass_cp, ass_texto)
        S.append(c)
        if c < x:
            texto_infectado = i
            x = c
        i += 1
        
    print('O autor do texto', texto_infectado,'está infectado com COH-PIAH')
    return texto_infectado

ass_cp = le_assinatura()
textos = le_textos()
avalia_textos(textos, ass_cp)

