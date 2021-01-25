%C�lculo do tempo de acelera��o

fprintf('\ninsira os valores nas medidas pedidas \npara valores n�o inteiros utilize ponto e n�o v�rgula\n\n')

%Pr = Fr * G * V ;

Fr = input('coeficiente de r�sistencia ao rolamento (adimensional): ');
fprintf('\n')

Mv = input('massa do ve�culo (Kg): ');
fprintf('\n')

Mp = input('massa do piloto (Kg): ');
fprintf('\n')

Mt = (Mv + Mp); %Massa total

G = (Mt * 9.80665); %peso total (N)

%Pa = 0.5 * Ro * V^3 * Cx * A

Ro = input('densidade do ar (Kg/m�): ');
fprintf('\n')

Cx = input('coeficiente de arrasto (adimensional): ');
fprintf('\n')

A = input('maior sec��o transversal do ve�culo (m�): ');
fprintf('\n')

%Pw = V * (T * Num * N * n)/r ;

T = input('torque do motor (N.m): ');
fprintf('\n')

Num = input('n�mero de motores: ');
fprintf('\n')

N = input('Rela��o de Transmiss�o utilizada (adimensional): ');
fprintf('\n')

n = input('n�vel de efici�ncia da transmiss�o (adimensional: ');
fprintf('\n')

r = input('raio din�mico do pneu (m): ');
fprintf('\n')

% Pn = Pw - Pr - Pa;

I = input('in�rcia das massas rotativas (adimensional): ');
fprintf('\n')

Vmin = input('velocidade inicial (Km/h): ');
fprintf('\n')

Vmax= input('velocidade final (Km/h): ');
fprintf('\n')

Rmin = (Vmin * 60)/(sin(pi) * 2 * r); %Velocidade de rota��o min�ma da roda (RPM)

Rmax = (Vmax*60)/(sin(pi) * 2 * r); %Velocidade de rota��o m�xima da roda (RPM)

syms V

Fun = (1/(((T * Num * N * n)/r) - (Fr * G) - (0.5 * Ro * V^2 * Cx * A))) ; %fun��o integrada

figure
plot(V,Fun)

%t = Mt * (1 + I) * int(Fun(V),Rmin,Rmax); %c�lculo do tempo para ir de Rmin at� Rmax

%fprintf('o tempo estimado para acelerar de %d para %d � de %.2f\n',Vmin,Vmax,t)



