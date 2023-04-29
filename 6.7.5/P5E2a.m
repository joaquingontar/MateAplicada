%EJERCICIO 2 A PRACTICA 5
clear,clc, close all
tmin=0;
tmax=5;
tt=0:.1:5;
%?(t) = e^(-t^2/2)
phi=@(t) exp((-1*t.^2)/2);
%funcion: y'=-ty
fpvi=@(t,y) -1*t*y;
%la aproximacion es en 1
y0=1
n = [10 20 40 80]
%ploteo
color=['r' 'm' 'b' 'k']
plot(tt,phi(tt),'r'),hold on, grid on;
for i=1:length(n)
    [t,y]=Euler(fpvi,tmin,tmax,y0,n(i));
    plot(t,y, color(i));
end
    

