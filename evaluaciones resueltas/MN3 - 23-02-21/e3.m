%EJERCICIO 3
clear, clc, close all
%aproximar la funcion con el metodo de Euler
%defino constantes
f=@(t,y) (y-t).^2;
y0=0;
a=0;
b=1;
h=0.1;
n=(b-a)/h;
%aplico el metodo
[t1,y1]= Euler(f,a,b,y0,n);
% b) utilizo el meto de Heun para aproxima el PVI
[t2,y2]= Heun(f,a,b,y0,n);
% c) comparar graficamente los resultado
%sea la solucion exacta
y=@(t) t-tanh(t);
v=0:.1:1
figure(1)
plot(v,y(v),'r', t1, y1, 'k'), grid on, hold on;
legend('exacta','Euler');
figure(2)
plot(v,y(v),'r', t2, y2, 'k'), grid on, hold on;
legend('exacta','Heun');
figure(3)
subplot (1,2,1),plot(v,y(v),'r', t1, y1, 'k'), grid on, hold on;
subplot (1,2,2),plot(v,y(v),'r', t2, y2, 'k'), grid on, hold on;
fprintf('en las graficas se puede apreciar que el metodo de Heun es mucha mas preciso');


