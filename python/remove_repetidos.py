def remove_repetidos(x):
    for i in range(len(x)):
        y = i + 1
        while y <= len(x)-1:
            if x[i] == x[y]:
                del x[y]
            else:
                y += 1
    z = sorted(x)
    return z
