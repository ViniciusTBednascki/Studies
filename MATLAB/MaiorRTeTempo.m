%Calculo da maior for�a de tra��o nas rodas

fprintf('\ninsira os valores nas medidas pedidas \npara valores n�o inteiros utilize ponto e n�o v�rgula\n\n')

u = input('coeficiente de atrito da roda com o asfalto (adimensional): ');
fprintf('\n')

Mv = input('massa do ve�culo (Kg): ');
fprintf('\n')

Mp = input('massa do piloto (Kg): ');
fprintf('\n')

Mt = (Mv + Mp); 

G = (Mt * 9.80665); 

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

Fmax = u * G * cos(alpha) * ((x - f * (h/l))/(1 - u * (h/l))); 

%c�lculo da maior rela��o transmiss�o

d = input('di�metro do pneu (m): ');
fprintf('\n')

T = input('torque do motor (N.m): ');
fprintf('\n')

Num = input('n�mero de motores: ');
fprintf('\n')

n = input('n�vel de efici�ncia da transmiss�o (adimensional): ');
fprintf('\n')

N = (Fmax * (d/2))/(T * Num * n);

%calculo do menor tempo de acelera��o

Ro = 1.2928;

Cx = input('coeficiente de arrasto (adimensional): ');
fprintf('\n')

A = input('maior sec��o transversal do ve�culo (m�): ');
fprintf('\n')

I = input('in�rcia das massas rotativas (adimensional): ');
fprintf('\n')

Vmin = input('velocidade inicial (km/h): ');
fprintf('\n')

Vmax= input('velocidade final (km/h): ');
fprintf('\n')

pi = imag(log(-1));

Rmin = ((Vmin/3.6) * 60)/(pi * d); 

Rmax = ((Vmax/3.6) * 60)/(pi * d); 

Fun = @(R)R./(((2.*pi.*T.*Num.*R.*n.*N)./(60))-(0.5.*Ro.*(pi.*R.*d./60).^3.*Cx.*A+f.*G.*pi.*R.*d./60));

t = ((Mt * (1 + I) * pi^2 * d^2)/(60^2)) * integral(Fun,Rmin,Rmax);

fprintf('A maior rela��o de transmiss�o poss�vel � %.2f\n',N)
fprintf('O menor tempo de aceler��o � %.2f\n',t)
fplot(@(R)R./((Mt.*(1 + I).*pi.^2.*d.^2)./(60.^2)).*(((2.*pi.*T.*Num.*R.*n.*N)./(60))-(0.5.*Ro.*(pi.*R.*d./60).^3.*Cx.*A+f.*G.*pi.*R.*d./60)),[Rmin,Rmax])