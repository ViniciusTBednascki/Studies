def cria_matriz_unica(linha,coluna,valor=0):
    matriz = []
    for i in range(linha):
        linhas = []
        for j in range(coluna):
            linhas.append(valor)
        matriz.append(linhas)
    return matriz

def cria_matriz(linha,coluna,):
    matriz = []
    for i in range(linha):
        linhas = []
        for j in range(coluna):
            valor = int(input("digite o valor ["+str(i)+"]["+str(j)+"] :"))
            linhas.append(valor)
        matriz.append(linhas)
    return matriz
    
def mostrar_matriz(matriz,linha,coluna):
    for i in range(linha):
        for j in range(coluna):
            print(matriz[i][j], end ="\t")
        print('\n')
    
def matriz():
    linha = int(input('digite o número de linhas da matriz:'))
    coluna = int(input('digite o número de colunas da matriz:'))
    print()
    matriz = cria_matriz(linha,coluna)
    print(matriz)

if __name__ == '__main__':
    matriz()
