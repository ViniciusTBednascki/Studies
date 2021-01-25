from math import *
from scipy.integrate import *
from sympy import *

class CalculoTR:
    def __init__(self,u,Mv,Mp,Alpha,x,f,h,l,d,T,Num,n,Ro,Cx,A,I,Vmin,Vmax):
        self.u = u
        self.Mt = Mv+Mp
        self.G = self.Mt*9.80665
        self.Alpha = Alpha
        self.x = x
        self.f = f
        self.h = h
        self.l = l
        self.d = d
        self.Ttotal = T*Num
        self.n = n
        self.Ro = Ro
        self.Cx = Cx
        self.A = A
        self.I = I
        self.Vmin = Vmin
        self.Vmax = Vmax
        self.Fmax = ''
        self.RT = ''
        self.Rmin = ''
        self.Rmax = ''
        self.t = ''
        
    def fmax(self):
        self.Fmax = self.u * self.G * cos(self.Alpha) * (self.x - self.f * (self.h/self.l))/(1 - self.u * (self.h/self.l))

    def rt(self):
        self.RT = (self.Fmax * (self.d/2))/(self.Ttotal*self.n)

    def Fun(self,x):
        C = (self.Mt * (1 + self.I) * pi**2 * self.d**2)/60**2
        return C*x/(((2*pi*self.Ttotal*x*self.n*self.RT)/60)-(0.5*self.Ro*(pi*x*self.d/60)**3 * self.Cx*self.A + self.f*self.G*pi*x*self.d/60))
        
    def MenorTempo(self):
        self.Rmin = ((self.Vmin/3.6) * 60)/(pi * self.d)
        self.Rmax = ((self.Vmax/3.6) * 60)/(pi * self.d)
        t = quad(self.Fun,self.Rmin,self.Rmax)
        self.t = t[0]

    def FunIntegrada(self):
        x = Symbol('x')
        pi = 3.14159265359
        C = (self.Mt * (1 + self.I) * pi**2 * self.d**2)/60**2
        return integrate(C*x/(((2*pi*self.Ttotal*x*self.n*self.RT)/60)-(0.5*self.Ro*(pi*x*self.d/60)**3 * self.Cx*self.A + self.f*self.G*pi*x*self.d/60)),x)
    
TR = CalculoTR(0.8,270,80,0,0.55,0.015,0.35,1.555,0.5,52.8,2,0.9,1.2928,0.8,1.1,0.054,0,80)
TR.fmax()
TR.rt()
TR.MenorTempo()
Int = TR.FunIntegrada()
