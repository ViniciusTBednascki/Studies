def dimensao(matriz):
    dimensao =dict()
    dimensao['linhas'] = 0
    dimensao['colunas'] = 0
    for i in range(len(matriz)):
        dimensao['linhas'] += 1
    for j in range(len(matriz[0])):
        dimensao['colunas'] += 1
    return dimensao
    

def sao_multiplicaveis(m1,m2):
    d1 = dimensao(m1)
    d2 = dimensao(m2)
    if d1['colunas'] == d2['linhas']:
        return True
    else:
        return False
    
