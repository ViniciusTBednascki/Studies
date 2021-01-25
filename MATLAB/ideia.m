%cálculo da relação transmissão

Pw = Pi + Pr + Pa; %cálculo da potencia nas rodas

Pr = Fr * Mt * g * v; %cálculo da perda pela resistência do rolamento 
%Fr = coeficiente de resistência do rolamento
Mt = Mp + Mv %Mt = massa total do sistema (piloto + veículo)
%g = aceleração gravitacional
%v = velocidade do veículo

Pa = 0,5 * Ro * v^3 * Cx * A; %cálculo da perda pela aerodinâmica
%Ro = densidade do ar
%v = velocidade do veículo
%Cx = coeficiente de arrasto
%A = maior área transverssal do carro

Pw = Fx * v %cálculo da potência nas rodas
Fx = (T * N * n)/r %Fx = força de tração
    %T = torque do motor
    %N = relação geral de transmissão entre motor e roda
    %n = nível de eficiência da transmissão
    %r = raio dinâmico do pneu
%v = velocidade do veículo

Fx <= Fmax

Fmax = u * Mt * g * cos(alpha) * ((x - f * (h/l))/(1 - u * (h/l))) %Fmax = força máxima de tração nos pneus
%u = coeficiente de atrito
%Mt = massa total
%g = aceleração gravitacional
%alpha = ângulo de inclinação da pista
%x = parcela de carga sobre o eixo traseiro
%f = coeficiente de atrito do rolamento
%h = altura do centro de gravidade
%l = distância entre eixos

Pi = Mv * a * (1+&) * v %cálculo das perdas pelas forças inerciais
%Mv = massa do veículo
%a = aceleração do veículo
%& = inércia equivalente das massa rotativas
%v = velocidade do veículo

Pn = Pi %Durante aceleração a potencia liquida resultante é igual à potencia inercial