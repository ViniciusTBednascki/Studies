import cria_matriz
import sao_multiplicaveis

def multiplicacao_matrizes(A,B):
    if not sao_multiplicaveis.sao_multiplicaveis(A,B):
        print('As matrizes não são multiplicaveis')
    else:
        num_lin,num_col = len(A),len(B[0])
        C = cria_matriz.cria_matriz_unica(num_lin,num_col)
        for lin in range(len(A)):
            for col in range(len(B[0])):
                i = 0
                while i < len(A[0]):
                    C[lin][col] += A[lin][i]*B[i][col]
                    i += 1
        return C

if __name__ == '__main__':
    if multiplicacao_matrizes([[1], [2], [3]],[[4, 5, 6]]) == [[4, 5, 6], [8, 10, 12], [12, 15, 18]]:
        print('teste 1 funcionou')
    else:
        print('teste 1 falhou')
    
        
    
