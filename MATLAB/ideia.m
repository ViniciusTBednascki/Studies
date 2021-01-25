%c�lculo da rela��o transmiss�o

Pw = Pi + Pr + Pa; %c�lculo da potencia nas rodas

Pr = Fr * Mt * g * v; %c�lculo da perda pela resist�ncia do rolamento 
%Fr = coeficiente de resist�ncia do rolamento
Mt = Mp + Mv %Mt = massa total do sistema (piloto + ve�culo)
%g = acelera��o gravitacional
%v = velocidade do ve�culo

Pa = 0,5 * Ro * v^3 * Cx * A; %c�lculo da perda pela aerodin�mica
%Ro = densidade do ar
%v = velocidade do ve�culo
%Cx = coeficiente de arrasto
%A = maior �rea transverssal do carro

Pw = Fx * v %c�lculo da pot�ncia nas rodas
Fx = (T * N * n)/r %Fx = for�a de tra��o
    %T = torque do motor
    %N = rela��o geral de transmiss�o entre motor e roda
    %n = n�vel de efici�ncia da transmiss�o
    %r = raio din�mico do pneu
%v = velocidade do ve�culo

Fx <= Fmax

Fmax = u * Mt * g * cos(alpha) * ((x - f * (h/l))/(1 - u * (h/l))) %Fmax = for�a m�xima de tra��o nos pneus
%u = coeficiente de atrito
%Mt = massa total
%g = acelera��o gravitacional
%alpha = �ngulo de inclina��o da pista
%x = parcela de carga sobre o eixo traseiro
%f = coeficiente de atrito do rolamento
%h = altura do centro de gravidade
%l = dist�ncia entre eixos

Pi = Mv * a * (1+&) * v %c�lculo das perdas pelas for�as inerciais
%Mv = massa do ve�culo
%a = acelera��o do ve�culo
%& = in�rcia equivalente das massa rotativas
%v = velocidade do ve�culo

Pn = Pi %Durante acelera��o a potencia liquida resultante � igual � potencia inercial