class Triangulo:
    def __init__(self,a,b,c):
        self.a = a
        self.b = b
        self.c = c
        
    def perimetro(self):
        return self.a+self.b+self.c
    
    def tipo_lado(self):
        if self.a == self.b and self.b == self.c:
            return 'equilátero'
        elif self.a==self.b or self.b==self.c or self.c==self.a:
            return 'isósceles'
        else:
            return 'escaleno'
        
    def retangulo(self):
        if self.a == self.b or self.a == self.c:
            return False
        else:
            lista = sorted([self.a,self.b,self.c])
            hipotenusa,cateto2,cateto1 = lista[2],lista[1],lista[0]
            if hipotenusa**2 == cateto1**2 + cateto2**2:
                return True
            else:
                return False
            
    def angulos(self):
        A = (self.b**2 + self.c**2 - self.a**2)/(2*self.b*self.c)
        B = (self.a**2 + self.c**2 - self.b**2)/(2*self.a*self.c)
        C = (self.a**2 + self.b**2 - self.c**2)/(2*self.b*self.a)
        return A,B,C
    
    def semelhantes(self,triangulo):
        lista1 = sorted([self.a,self.b,self.c])
        lista2 = sorted([triangulo.a,triangulo.b,triangulo.c])
        relação=[]
        for i in range(len(lista1)):
            relação.append(lista1[i]/lista2[i])
        if relação[0] == relação[1] and relação[0] == relação[2]:
            angulos1 = sorted(self.angulos())
            angulos2 = sorted(triangulo.angulos())
            if angulos1[0] == angulos2[0] and angulos1[1] == angulos2[1] and angulos1[2] == angulos2[2]:
                return True
        else:
            return False
            
        
