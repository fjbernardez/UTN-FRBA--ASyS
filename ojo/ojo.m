clear;
clc;
close all;
% Convolucion - Diapositiva 20
% Modelizacion del hojo humano

% delta t
dt = 0.001;
% intervalo temporal para ft
t1 = 0:dt:.2;

%funcion de entrada al sistema
ft = 28800 .* escalon(t1);

% polinomio caracteristico. Raices complejas. 
% alfa + j*beta  
% alfa - j*beta
alfa = -84;
beta = 12*sqrt(51);

%conciciones de borde
k1 = -2;
k2 = (7*sqrt(51))/51;
%pkg load
%analitica = 

% funcion calculada analiticamente - respuesta indicial
titaAnalitica_t = 2 + exp(alfa.*t1) .* (  k1 * cos(beta.*t1) + k2 * sin (beta.*t1) ) ; 

% calculo de la respuesta al impuso.
rtaImpulso = diff (titaAnalitica_t) / dt ;

% calculo de la respuesta indicial con la convolucion
titaConvolucion_t = conv (ft,rtaImpulso) * dt ;


figure(1);

hold on ;

plot (t1,titaAnalitica_t) ;

plot (t1, (titaConvolucion_t( 1:length(t1) ) / 28800) ,'+') ;

axis([0,0.2,0,3]);
grid;
title("Solucion Analitica");
xlabel("Tiempo [seg]");
ylabel("Radianes");

%Observaciones:
%Sistema estable para t=5tau
%Plot en la convolucion limitado
%Plot en la convolucion limitado
%Similitud de las curvas en relacion al dt