%recalcular a Rela��o Transmiss�o

Fmax = u * G * cos(alpha) * ((x - f * (h/l))/(1 - u * (h/l)));

N = (Fmax * r)/(T * Num * n);

fprintf('A maior rela��o de transmiss�o poss�vel � %.2f\n',N)