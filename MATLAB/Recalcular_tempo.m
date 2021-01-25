syms V

Fun = inline(1/(((T * Num * N * n)/r) - (Fr * G) - (0.5 * Ro * sqrt(V) * Cx * A))) ; %função integrada

t = Mt * (1 + I) * int(Fun(V),Rmin,Rmax); %cálculo do tempo para ir de Rmin até Rmax

fprint('o tempo estimado para acelerar de %d para %d é de %.2f\n',Vmin,Vmax,t)