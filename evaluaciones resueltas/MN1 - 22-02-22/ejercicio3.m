%EJERCICIO 3 
clear,clc,close all
%datos del problema
f=@(t,x,y) 2.*x+3.*y;
g=@(t,x,y) 2.*x+y;
x0=-2.7;
y0=2.8;
a=0; %limite inferior
b=1; %limite superior
n=48; %cantidad de subintervalos
h= (b-a)/48; %numero de pasos
%ahora aproximo con Heun
[t,x,y] = Heun_Sistemas(f,g,a,b,x0,y0,n);
%en el item c debo plotear las funciones y comparar los resultados
xe = @(z)(3/50)*exp(4*z) - (69/25)*exp(-z);
ye = @(z)(1/25)*exp(4*z) + (69/25)*exp(-z);
z=0:.01:1
subplot(1,2,1), plot(t,x,'g', z,xe(z), 'k'), grid on;
subplot(1,2,2), plot(t,y,'g', z,ye(z), 'k'),grid on;
%calculo del error
err1= abs(y(n+1)-ye(1));
err2= abs(x(n+1)-xe(1));
fprintf('el error en la funcion x es: %2.5f\n', err1);
fprintf('el error en la funcion y es: %2.5f\n', err2);

