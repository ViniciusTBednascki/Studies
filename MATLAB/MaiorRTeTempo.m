%Calculo da maior força de tração nas rodas

fprintf('\ninsira os valores nas medidas pedidas \npara valores não inteiros utilize ponto e não vírgula\n\n')

u = input('coeficiente de atrito da roda com o asfalto (adimensional): ');
fprintf('\n')

Mv = input('massa do veículo (Kg): ');
fprintf('\n')

Mp = input('massa do piloto (Kg): ');
fprintf('\n')

Mt = (Mv + Mp); 

G = (Mt * 9.80665); 

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

Fmax = u * G * cos(alpha) * ((x - f * (h/l))/(1 - u * (h/l))); 

%cálculo da maior relação transmissão

d = input('diâmetro do pneu (m): ');
fprintf('\n')

T = input('torque do motor (N.m): ');
fprintf('\n')

Num = input('número de motores: ');
fprintf('\n')

n = input('nível de eficiência da transmissão (adimensional): ');
fprintf('\n')

N = (Fmax * (d/2))/(T * Num * n);

%calculo do menor tempo de aceleração

Ro = 1.2928;

Cx = input('coeficiente de arrasto (adimensional): ');
fprintf('\n')

A = input('maior secção transversal do veículo (m²): ');
fprintf('\n')

I = input('inércia das massas rotativas (adimensional): ');
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

fprintf('A maior relação de transmissão possível é %.2f\n',N)
fprintf('O menor tempo de acelerção é %.2f\n',t)
fplot(@(R)R./((Mt.*(1 + I).*pi.^2.*d.^2)./(60.^2)).*(((2.*pi.*T.*Num.*R.*n.*N)./(60))-(0.5.*Ro.*(pi.*R.*d./60).^3.*Cx.*A+f.*G.*pi.*R.*d./60)),[Rmin,Rmax])