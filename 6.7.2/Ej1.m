% Script: Ejercicio 1


clear, clc, close all


% Defino las funciones:
f = @(x) ((1./(1+2*x))-((1-x)./(1+x)));
g = @(x) ((2*x.^2)./(2*x.^2+3*x+1));
h = @(x) ((2*x.^2)./((x+.5).*(x+1)));

% Probando las funciones:
f(0) % Devuelve 0
g(0) % Devuelve 0
h(0) % Devuelve 0

f(0.0001) % Devuelve 1.9994e-08
g(0.0001) % Devuelve 1.9994e-08
h(0.0001) % Devuelve 3.9988e-08

% c) Ploteos:
x = -1e-1: 1e-8 : 1e-1;
y = -1e-7: 1e-10: 1e-7;
z = -1e-8: 1e-10: 1e-8;

subplot(1,3,1), plot (x, f(x), x, g(x),x, h(x)), grid on;
axis([min(x) max(x) -max(abs(f(x))) max(abs(f(x)))]);

subplot(1,3,2), plot (y, f(y), y, g(y), y, h(y)), grid on;
axis([min(y) max(y) -max(abs(f(y))) max(abs(f(y)))]);

subplot(1,3,3), plot (z, f(z), z, g(z), z, h(z)), grid on;
axis([min(z) max(z) -max(abs(f(z))) max(abs(f(z)))]);

% saveas(gcf, 'Ej1', 'fig');   % guarda la figura en directorio actual
