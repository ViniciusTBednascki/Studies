x1=float(input("coordenada x do primeiro ponto: "))
y1=float(input("coordenada y do primeiro ponto: "))
x2=float(input("coordenada x do segundo ponto: "))
y2=float(input("coordenada y do segundo ponto: "))
import math
xt = x2 - x1
yt = y2 - y1
d = abs(math.sqrt((xt**2) + (yt**2)))
if d >= 10:
    print("longe")
else:
    print("perto")
