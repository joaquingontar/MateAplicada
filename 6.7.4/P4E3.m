%EJERCICIO 3 PRACTICA 4
clear,clc,close all
s=@(x) sign(x-2).*sqrt(abs(x-2));
x=0:.001:4;
fprintf('el valor de s en x=2 es:\n');
s2=s(2)
x0=2.5, %aproximacion 
tol=1e-4; %tolerancia
itmax= 30; %maxima cantidad de iteraciones
xNR=NewtonRaphsonDeriv(s,x0,tol,itmax)
plot(x,s(x),'r', x0,s(x0),'+', xNR, s(xNR),'o'), grid on, hold on
fprintf('el valor de s en x=2.5 es:\n');
s25=s(2.5)
%========================================================================
%este es un caso especial
%al tomar el punto de aproximacion 2.5 cuando hago la tangente me da un
%valor de -sqrt(2), que es el punto -2.5, y cuando hago la tangente de este
%me da sqrt(2), que es el punto 2.5, por lo tango va oscilando y nunca llega
%a aproximar
%========================================================================
%hay otro caso especial que al tomar una aproximacion se empieza a alejar
%de la raiz y cada vez que voy haciendo la tangente se aleja mas, por lo
%tanto el metodo termina divergiendo