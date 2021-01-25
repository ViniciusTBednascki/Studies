%Calculo da maior for�a de tra��o nas rodas

fprintf('\ninsira os valores nas medidas pedidas \npara valores n�o inteiros utilize ponto e n�o v�rgula\n\n')
u = input('coeficiente de atrito da roda com o asfalto (adimensional): ');
fprintf('\n')

Mv = input('massa do ve�culo (Kg): ');
fprintf('\n')

Mp = input('massa do piloto (Kg): ');
fprintf('\n')

Mt = (Mv + Mp); %Massa total

G = (Mt * 9.80665); %peso total (N)

alpha = input('grau de inclina��o da pista: ');
fprintf('\n')

x = input('parcela de carga sobre o eixo traseiro (adimensional): ');
fprintf('\n')

f = input('coeficiente de atrito de rolamento (adimensional): ');
fprintf('\n')

h = input('altura do centro de gravidade (m):');
fprintf('\n')

l = input('dist�ncia entre eixos (m):');
fprintf('\n')

Fmax = u * G * cos(alpha) * ((x - f * (h/l))/(1 - u * (h/l))); %for�a de tra��o m�xima

%c�lculo da maior rela��o transmiss�o

r = input('raio din�mico do pneu (m): ');
fprintf('\n')

T = input('torque do motor (N.m): ');
fprintf('\n')

Num = input('n�mero de motores: ');
fprintf('\n')

n = input('n�vel de efici�ncia da transmiss�o (adimensional: ');
fprintf('\n')

N = (Fmax * r)/(T * Num * n); %maior rel��o poss�vel

fprintf('A maior rela��o de transmiss�o poss�vel � %.2f\n',N)

