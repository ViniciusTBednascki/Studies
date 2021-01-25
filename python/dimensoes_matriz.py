def dimensoes(matriz):
    linha = 0
    coluna = 0
    for i in range(len(matriz)):
        linha += 1
    for j in range(len(matriz[0])):
        coluna += 1
    print(str(linha)+'X'+str(coluna))
