def bubble_sort(lista):
        for i in range(len(lista)-1,0,-1):
            for j in range(i):
                alteração = False
                if lista[j+1] < lista[j]:
                    lista[j+1],lista[j] = lista[j],lista[j+1]
                    print(lista)
                    alteração = True
            if not alteração:
                return lista
        return lista
