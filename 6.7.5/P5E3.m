%EJERCICIO 3 PRACTICA 5
clear, clc, close all
%datos del PVI
fpvi= @(x,y) x.^2-y;
y0=1;
a=0;
b=4;
%pasos
h=[1, 0.5, 0.25, 0.125, 0.0625];
%grafica con el metodo de Euler
color=['r' 'm' 'y' 'k' 'b']
%grafica de la solucion exacta del PVI, ?(x) = x^2?2x+2?e^(?x)
tt=0:.01:4; %intervalo
phi=@(x) x.^2-2.*x+2-exp(-x);
%ploteo la solucion
plot(tt,phi(tt),'g'), grid on, hold on
for i=1:length(h)
    [x,y]=Euler(fpvi,a,b,y0,(b-a)/h(i));
    plot(x,y,color(i));
    err= abs(phi(4)-y(i));
    fprintf('el error en el paso h= %12.9f es %d\n',h(i), err);
end
