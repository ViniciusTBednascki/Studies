class Exercicios:
    def Soma_div3(self,n):
        soma = 0
        for i in range(n+1):
            if i%3 == 0:
                soma += i
        return soma
    
    def Ex11(self):
        n = int(input('digite o valor máximo: '))
        return self.Soma_div3(n)
    
    def Alturas(self,lista):
        lista_ordenada = sorted(lista)
        return lista_ordenada[0],lista_ordenada[len(lista)-1]

    def Ex12(self):
        lista = []
        x = input('digite a altura[aperte enter para sair]: ')
        while x != '':
            valor = float(x)
            lista.append(valor)
            x = input('digite a altura[aperte enter para sair]: ')
        Max, Min = self.Alturas(lista)
        print(Max)
        print(Min)

    def calculos_lista(self,lista):
        soma = 0
        positivos = 0
        negativos = 0
        for i in lista:
            soma += i
            if i >= 0:
                positivos += 1
            else:
                negativos += 1
        media = soma/len(lista)
        p_positivos = int((positivos/len(lista))*100)
        p_negativos = int((negativos/len(lista))*100)
        return media,p_positivos,p_negativos

    def Ex13(self):
        lista = []
        n = int(input('quantos valores serão inseridos?\n'))
        for i in range(n):
            x = float(input('digite o valor: '))
            lista.append(x)
        media,p_positivos,p_negativos = self.calculos_lista(lista)
        print(media)
        print(str(p_positivos)+'%')
        print(str(p_negativos)+'%')

    def faixa(self,lista):
        faixa1,faixa2,faixa3,faixa4 = 0,0,0,0
        for i in lista:
            if i <= 50 and i >= 0 :
                if i > 25:
                    faixa2 += 1
                else:
                    faixa1 += 1
            elif i <= 100:
                if i > 75:
                    faixa4 += 1
                else:
                    faixa3 += 1
        return faixa1,faixa2,faixa3,faixa4

    def Ex14(self):
        lista = []
        x = int(input('valor da lista: '))
        while x >= 0:
            lista.append(x)
            x = int(input('valor da lista: '))
        faixa1,faixa2,faixa3,faixa4 = self.faixa(lista)
        print(faixa1,faixa2,faixa3,faixa4)

    def impar_par(self,lista):
        total,pares,impares,valor_pares = 0,0,0,0
        for i in lista:
            total += i
            if i%2 == 0:
                pares += 1
                valor_pares += i
            else:
                impares += 1
        media_pares = valor_pares/pares
        media = total/len(lista)
        return pares,impares,media_pares,media

    def Ex15(self):
        lista = []
        x = int(input('insira o valor: '))
        while x != 0:
            lista.append(x)
            x = int(input('insira o valor: '))
        pares,impares,media_pares,media = self.impar_par(lista)
        print(pares,impares,media_pares,media)
        
        
Fazer = Exercicios()
