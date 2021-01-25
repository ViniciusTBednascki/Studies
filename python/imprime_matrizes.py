def imprime_matriz(matriz):
    for i in range(len(matriz)):
        for j in range(len(matriz[0])-1):
            print(matriz[i][j], end=" ")    
        print(matriz[i][len(matriz[0])-1])
        
