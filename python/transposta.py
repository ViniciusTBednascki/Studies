def transposta(matriz):
    transposta = []
    for i in range(len(matriz)):
        linha = []
        for j in range(len(matriz[0])):
            valor = matriz[j][i]
            linha.append(valor)
        transposta.append(linha)
    return transposta

def imprime_matriz(matriz):
    for i in range(len(matriz)):
        for j in range(len(matriz[0])-1):
            print(matriz[i][j], end=" ")    
        print(matriz[i][len(matriz[0])-1])
        
def cria_matriz(linha,coluna):
    matriz = []
    for i in range(linha):
        linhas = []
        for j in range(coluna):
            valor = int(input('digite o valor ['+str(i)+']['+str(j)+']:'))
            linhas.append(valor)
        matriz.append(linhas)
    return matriz
    
def matriz():
    linha = int(input('digite o número de linhas da matriz:'))
    coluna = int(input('digite o número de colunas da matriz:'))
    print()
    matriz = cria_matriz(linha,coluna)
    return matriz

x = matriz()
print('matriz digitada:')
imprime_matriz(x)
y = transposta(x)
print()
print('matriz transposta:')
imprime_matriz(y)
