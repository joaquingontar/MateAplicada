%EJERCICIO 3
clear, clc, close all
% Despejo M asi me queda la funcion igual a cero
f=@(E) E-0.09341233.*sin(E)-41.9226
%Para aproximar la solucion utilizo el Metodo de Newton Raphson deriv
x0=40; %aproximacion
tol=1; %tolerancia
itmax=30;
x=NewtonRaphsonDeriv(f,x0,tol,itmax)
% b) el metodo es muy rapido ya que solo se necesitaron 2 iteraciones para
% obtener la aproximacion