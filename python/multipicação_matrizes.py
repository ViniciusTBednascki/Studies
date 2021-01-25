import cria_matriz
import sao_multiplicaveis

def multiplicação_matrizes(A,B):
    if not sao_multiplicaveis.sao_multiplicaveis(A,B):
        print('As matrizes não são multiplicaveis')
    else:
        num_lin,num_col = len(A),len(B[0])
        C = cria_matriz.cria_matriz(num_lin,num_col)
        for lin in len(A):
            for col in len(B[0]):
                i = 0
                while i <= len(A[0]):
                    C[lin][col] = A[lin][i]*B[i][col]
        return C
        
    
