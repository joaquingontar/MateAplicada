%EJERCICIO 1 PARCIAL 23-02-2022
clear,clc,close all
g=@(x) sin(x)./(1-sqrt(x.^2+1));
%al evaluar en un numero muy proximo al cero, podemos observar que en el
%denominados estamos restando dos numeros muy proximos entre si, que la
%maquina los va a redondear al mismo, es decir, sqrt((x~0)^2+1) va a ser
%redondeado a cero y por lo tanto el denominador me va a dar cero. El
%resultado de g(x~0)=0/0=>NaN
%b) como corregir este error...
%multiplico y divido por el conjugado del denominador, obtengo
%gm(x)= -sin(1+sqrt(x^2+1))/x^2
gm= @(x) -sin(x).*(1+sqrt(x.^2+1))./x.^2;
%c) ploter g con dos intervalos distintos en la misma grafica
v1= [-1e-5 -1e-6 -1e-7];
v2= [1e-5 1e-6 1e-7];
for i=1:3
    x = linspace(v1(i), v2(i),100);
    subplot(1,3,i), plot(x,g(x),'r', x, gm(x), 'k'), hold on, grid on;
end