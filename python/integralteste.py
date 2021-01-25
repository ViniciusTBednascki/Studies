from scipy.integrate import quad
def f(x):
    return 3*x**2 + 1
i = quad(f,0,2)
print(i)
