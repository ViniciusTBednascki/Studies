syms V

Fun = inline(1/(((T * Num * N * n)/r) - (Fr * G) - (0.5 * Ro * sqrt(V) * Cx * A))) ; %fun��o integrada

t = Mt * (1 + I) * int(Fun(V),Rmin,Rmax); %c�lculo do tempo para ir de Rmin at� Rmax

fprint('o tempo estimado para acelerar de %d para %d � de %.2f\n',Vmin,Vmax,t)