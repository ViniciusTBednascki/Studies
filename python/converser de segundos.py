segs = int(input('número total de segundos: '))
min = segs // 60
segsrest = segs % 60
horas = min // 60
minrest = min % 60
print(horas,'horas',minrest,'minutos',segsrest,'segundos.')


