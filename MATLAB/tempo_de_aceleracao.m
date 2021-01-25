%Cálculo do tempo de aceleração

fprintf('\ninsira os valores nas medidas pedidas \npara valores não inteiros utilize ponto e não vírgula\n\n')

%Pr = Fr * G * V ;

Fr = input('coeficiente de rêsistencia ao rolamento (adimensional): ');
fprintf('\n')

Mv = input('massa do veículo (Kg): ');
fprintf('\n')

Mp = input('massa do piloto (Kg): ');
fprintf('\n')

Mt = (Mv + Mp); %Massa total

G = (Mt * 9.80665); %peso total (N)

%Pa = 0.5 * Ro * V^3 * Cx * A

Ro = input('densidade do ar (Kg/m³): ');
fprintf('\n')

Cx = input('coeficiente de arrasto (adimensional): ');
fprintf('\n')

A = input('maior secção transversal do veículo (m²): ');
fprintf('\n')

%Pw = V * (T * Num * N * n)/r ;

T = input('torque do motor (N.m): ');
fprintf('\n')

Num = input('número de motores: ');
fprintf('\n')

N = input('Relação de Transmissão utilizada (adimensional): ');
fprintf('\n')

n = input('nível de eficiência da transmissão (adimensional: ');
fprintf('\n')

r = input('raio dinâmico do pneu (m): ');
fprintf('\n')

% Pn = Pw - Pr - Pa;

I = input('inércia das massas rotativas (adimensional): ');
fprintf('\n')

Vmin = input('velocidade inicial (Km/h): ');
fprintf('\n')

Vmax= input('velocidade final (Km/h): ');
fprintf('\n')

Rmin = (Vmin * 60)/(sin(pi) * 2 * r); %Velocidade de rotação miníma da roda (RPM)

Rmax = (Vmax*60)/(sin(pi) * 2 * r); %Velocidade de rotação máxima da roda (RPM)

syms V

Fun = (1/(((T * Num * N * n)/r) - (Fr * G) - (0.5 * Ro * V^2 * Cx * A))) ; %função integrada

figure
plot(V,Fun)

%t = Mt * (1 + I) * int(Fun(V),Rmin,Rmax); %cálculo do tempo para ir de Rmin até Rmax

%fprintf('o tempo estimado para acelerar de %d para %d é de %.2f\n',Vmin,Vmax,t)



