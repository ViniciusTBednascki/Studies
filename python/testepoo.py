import pytest
import triangulo

class Teste:
    
    @pytest.mark.parametrize('a,b,c,esperado',[
        (1,2,3,6),
        (4,7,3,14),
        (80,4,7,91)
        ])
    
    def teste(self,a,b,c,esperado):
        t = triangulo.Triangulo(a,b,c)
        assert t.perimetro() == esperado

    @pytest.mark.parametrize('a,b,c,tipo',[
        (1,2,3,'escaleno'),
        (4,4,3,'isósceles'),
        (5,5,5,'equilátero')
        ])
    
    def teste_tipo(self,a,b,c,tipo):
        t = triangulo.Triangulo(a,b,c)
        assert t.tipo_lado() == tipo

    @pytest.mark.parametrize('a,b,c,esperado',[
        (1,3,5,False),
        (4,4,3,False),
        (4,5,3,True)
        ])
    
    def teste_retangulo(self,a,b,c,esperado):
        t = triangulo.Triangulo(a,b,c)
        assert t.retangulo() == esperado

    @pytest.mark.parametrize('a,b,c,d,e,f,esperado',[
        (2,2,2,4,4,4,True),
        (1,4,3,5,15,20,True),
        (4,5,3,1,2,3,False)
        ])
    
    def teste_semelhança(self,a,b,c,d,e,f,esperado):
        t1 = triangulo.Triangulo(a,b,c)
        t2 = triangulo.Triangulo(d,e,f)
        assert t1.semelhantes(t2) == esperado
