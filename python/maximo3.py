def maximo(x,y,z):
    if x>y and y>z or x>z and z>y:
        return x
    if y>x and x>z or y>z and z>x:
        return y
    if z>x and x>y or z>y and y>x:
        return z
    else:
        return x
