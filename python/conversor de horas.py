dia = int(input('dias: '))
hora = int(input('horas: '))
min = int(input('minutos: '))
seg = int(input('segundos: '))
diaseg = dia * 24 * 3600
horaseg = hora * 3600
minseg = min * 60
total = diaseg + horaseg + minseg + seg
print('isto dá um total de ', total,' segundos.')
