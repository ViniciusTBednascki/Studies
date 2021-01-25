def dimensoes(matriz):
    linha = 0
    coluna = 0
    dimensoes=[]
    for i in range(len(matriz)):
        linha += 1
    dimensoes.append(linha)
    for j in range(len(matriz[0])):
        coluna += 1
    dimensoes.append(coluna)
    return dimensoes

def soma_matrizes(m1,m2):
    d1 = dimensoes(m1)
    d2 = dimensoes(m2)
    if d1[0] != d2[0] or d1[1] != d2[1]:
        return False
    else:
        soma = []
        for i in range(len(m1)):
            linhas = []
            for j in range(len(m1[0])):
                valor = m1[i][j] + m2[i][j]
                linhas.append(valor)
            soma.append(linhas)
        return soma
                
