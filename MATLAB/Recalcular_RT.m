%recalcular a Relação Transmissão

Fmax = u * G * cos(alpha) * ((x - f * (h/l))/(1 - u * (h/l)));

N = (Fmax * r)/(T * Num * n);

fprintf('A maior relação de transmissão possível é %.2f\n',N)