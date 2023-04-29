%EJERCICIO 2 PRACTICA 4
clear, clc, close all
p=@(x)816*x.^3-3835*x.^2+6000*x-3125;
x=1:.001:2;
v=1.4:.001:1.7;
subplot(1,2,1), plot(x,p(x),'r')
subplot(1,2,2), plot(v,p(v),'b')
%calculo las raices utilizando la funcion intrinceca roots
fprintf('las raices calculadas con roots son\n');
r=roots([816 -3835 6000 -3125])
%aproximacion utilizando el metodo de Newton Raphson
dp=@(x) 3*816*x.^2-2*3835*x+6000;
fprintf('las raiz de la funcion en el intervalo [1,2] se encuentra aproximadamente en x=1.5\n')
fprintf('las raices de la funcion en el intervalo [1.4,1.7] se encuentran aproximadamente en x=1.5 y x=1.65\n')
NewtonRaphson(p,dp,1.5,1e-5,30);
NewtonRaphson(p,dp,1.65,1e-5,30);
NewtonRaphson(p,dp,1.55,1e-5,30);