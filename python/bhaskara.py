import math
class Bhaskara:
    def delta(self,a,b,c): 
        return b**2 - 4*a*c
    def raizes(self,a,b,c):
        d=self.delta(a,b,c) 
        if d < 0:
            return 0
        elif d == 0:
            raiz = (-b+math.sqrt(d))/(2*a)
            return 1,raiz
        else:
            raiz1 = (-b+math.sqrt(d))/(2*a)
            raiz2 = (-b-math.sqrt(d))/(2*a)
            return 2,raiz1,raiz2

import pytest
@pytest.mark.parametrize('entrada,esperado',[
    ([10,20,10],[1,-1])
    ])
def testa_funcao(entrada,esperado):
    t = Bhaskara()
    assert t.raizes(entrada) == (esperado)
