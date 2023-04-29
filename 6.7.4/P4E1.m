%EJERCICIO 1 PRACTICA 4
clear, clc, close all
x=0:.001:4;
f=@(x)exp(x)-3*x;
fprintf('busco las raices de la funcion f(x)=0 graficamente\n')
plot(x,f(x),'r'),grid on, hold on
xlabel('x');
ylabel('f(x)');
%puedo ver que hay raices en x=0.5 y x=1.5
df= @(x) exp(x)-3;
x1=NewtonRaphson(f,df,0.5,1e-5,30);
x2=NewtonRaphson(f,df,1.5,1e-5,30);
plot (x1, f(x1), 'k*');
plot (x2, f(x2), 'k*');
fprintf('las raices segun Newton Raphson son:\n x1=%12.9e \n x2=%12.9e\n',x1,x2);
fprintf('al ser la derivada de la funcion distinta de cero puedo garantizar la convergencia del metodo de forma local\n');
fprintf('como f no es creciente en todo su dominio no puedo garantizar la convergencia del metodo de forma global\n');