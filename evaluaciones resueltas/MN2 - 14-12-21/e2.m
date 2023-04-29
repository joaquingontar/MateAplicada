%EJERCICIO 2
clear,clc,close all
%dy/dt=-k*sqrt(y), k>0
%tomo k=0.2, entonces dy/dt=-2*sqrt(y)
f=@(t,y) -0.2* sqrt(y);
y0=4;
h=[2,1,0.5,0.25];
a=0;
b=10;
%calculo los n (cantidad de intervalos, sabiendo que h=(b-a)/n, siendo b el valor max del intervalo
%y a el valor minimo del intervalo
int=10;
for i=1:length(h)
    n=int./(h(i));
    [t,y]=Euler(f,a,b,y0,n); %utilizo la formula de Euler
    plot(t,y,'r'),grid on, hold on;
end
%grafica solucion exacta
ye = @(z) 4 - 0.4.*z + 0.01.*z.^2;
v=0:.1:10;
plot(v,ye(v),'k'),grid on, hold on;
%calculo del error
    error=abs(ye(n+1)-y(1))

%debo encontrar en cuando se vacia el tanque...
%sabiendo que y(t) es el nivel del agua, puedo ver cuando el nivel es cero
% es decir, busco las raices de la funcion, 0 = 4 - 0.4x z + 0.01x z^2
%Para esto utilizo el metodo de Newton Raphson deriv. Declaro las constantes
tol=1e-4;
itmax=30;
x0=0.5;
vacio=NewtonRaphsonDeriv(ye,x0,tol,itmax);
fprintf('el tanque se vacia en %4.8f minutos\n', vacio);
figure(2)
j=0:.5:30
plot(j,ye(j),'r',vacio,ye(vacio),'ko'),grid on, axis ([0 30 0 5]);




