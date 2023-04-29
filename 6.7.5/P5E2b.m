%EJERCICIO 2 B PRACTICA 5
clear,clc,close all
fpvi=@(t,y) 1./(1+t.^2)-2*y.^2; %funcion del pvi
a=0; %valor minimo del intervalo
b=10; %valor maximo del intervalo
phi=@(t) t./(1+t.^2); %solucion del sistema
y0=0 %aproximacion
tt=0:.1:10;
%ploteo la funcion
plot(tt,phi(tt), 'r'), hold on, grid on;
%debo definir un paso (es decir la long del intervalo sobre n)
%h=(a-b)/n
n=[10 20 40 80];
ln=length(n);
color=['m' 'r' 'b' 'y']
%aproximo a partir del metodo de Euler
for i=1:ln
    [x,y]= Euler(fpvi,a,b,y0, n(i));
    plot(x,y,color(i));
end

