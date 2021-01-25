%Calculo da maior força de tração nas rodas

fprintf('\ninsira os valores nas medidas pedidas \npara valores não inteiros utilize ponto e não vírgula\n\n')
u = input('coeficiente de atrito da roda com o asfalto (adimensional): ');
fprintf('\n')

Mv = input('massa do veículo (Kg): ');
fprintf('\n')

Mp = input('massa do piloto (Kg): ');
fprintf('\n')

Mt = (Mv + Mp); %Massa total

G = (Mt * 9.80665); %peso total (N)

alpha = input('grau de inclinação da pista: ');
fprintf('\n')

x = input('parcela de carga sobre o eixo traseiro (adimensional): ');
fprintf('\n')

f = input('coeficiente de atrito de rolamento (adimensional): ');
fprintf('\n')

h = input('altura do centro de gravidade (m):');
fprintf('\n')

l = input('distância entre eixos (m):');
fprintf('\n')

Fmax = u * G * cos(alpha) * ((x - f * (h/l))/(1 - u * (h/l))); %força de tração máxima

%cálculo da maior relação transmissão

r = input('raio dinâmico do pneu (m): ');
fprintf('\n')

T = input('torque do motor (N.m): ');
fprintf('\n')

Num = input('número de motores: ');
fprintf('\n')

n = input('nível de eficiência da transmissão (adimensional: ');
fprintf('\n')

N = (Fmax * r)/(T * Num * n); %maior relção possível

fprintf('A maior relação de transmissão possível é %.2f\n',N)

