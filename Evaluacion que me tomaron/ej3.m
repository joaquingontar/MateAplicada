%AUTOR: Gonzalez Targon Joaquin
%LEGAJO: G-5767/3
%COMISION: 510
clear, clc, close all
%EJERCICIO 3
% a)declaro el sistema
f=@(t,x,y) x+2.*y;
g=@ (t,x,y) 3*x + 2*y;
x0=6;
y0=4;
%declaro constantes necesarias
a=0; 
b=1;
n=48; %numero de pasos
[t,x ,y]=EulerM(f,g,a,b,x0,y0,n);
% b) Solucion exacta
x1= @(t) 4*exp(4*t) + 2* exp(-t);
x2= @(t) 6* exp(4*t) -2* exp(-t);
v=0:.01:1;
% c) Comparo con las soluciones exactas
subplot(1,2,1), plot(v, x1(v), 'r', t, x, 'k'), grid on
legend('exacta', 'Euler');
title('grafica de la funcion x(t)')
subplot(1,2,2), plot(v, x2(v), 'r', t, y, 'k'), grid on
legend('exacta', 'Euler');
title('grafica de la funcion y(t)')


