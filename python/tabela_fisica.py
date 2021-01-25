class tabela:
    def __init__ (self,pares):
        self.pares = pares
        self.mX = 'desconhecido'
        self.mY= 'desconhecido'
        self.dX = 'desconhecido'
        self.dY = 'desconhecido'
        self.dYdX = 'desconhecido'
        self.dX2 = 'desconhecido'

    def calculo_desvios(self):
        self.mX,self.mY = 0,0
        T = len(self.pares)
        for i in range(T):
            self.mX += self.pares[i][0]/T
            self.mY += self.pares[i][1]/T
        self.dX,self.dY,self.dYdX,self.dX2 = [],[],[],[]
        for i in range(T):
            self.dX.append(self.pares[i][0]-self.mX)
            self.dY.append(self.pares[i][1]-self.mY)
            self.dYdX.append(self.dX[i]*self.dY[i])
            self.dX2.append(self.dX[i]**2)
        dYdXtotal,dX2total = 0,0
        for i in range(T):
            dYdXtotal += self.dYdX[i]
            dX2total += self.dX2[i]
        self.a = dYdXtotal/dX2total
        self.b = self.mY - self.a*self.mX
        
def cria_tabela():
       
    n = int(input('quantas medições foram feitas?\n'))
    tabela = []
    for i in range(n):
        tabela.append([int(input('insira o '+str(i+1)+'º valor de X: '))])
    print()
    for i in range(n):
        tabela[i].append(int(input('insira o '+str(i+1)+'º valor de Y:')))
        print()
    return tabela

T = tabela(cria_tabela())
T.calculo_desvios()
if T.b == 0 :
    print('A equação da reta é '+str(intT.a)+'X')
elif T.b > 0:
    print('A equação da reta é '+str(T.a)+'X + '+str(T.b))
else:
    print('A equação da reta é '+str(T.a)+'X '+str(T.b))
