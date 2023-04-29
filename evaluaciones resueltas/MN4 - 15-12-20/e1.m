%EJERCICIO 1
clear,clc,close all
%f(x) =(1-cos x)/x
f=@ (x) (1-cos (x))./x
% a) Porque la funcion es inexacta cuando el x se aproxima a cero
%Esto sucede ya que al aproximar la funcion a cero el coseno se aproxima
%mucho a 1, y quedan restandose dos numeros muy proximos lo que genera un
%corrimiento de la mantiza y por lo tanto una perdida de cifras
%significativas
%Para solucionar este problema expreso la funcion como...
% f(x)= (1/x)- (cos(x)/x)
fm=@(x) (sin(x).^2)./(x.*(1+cos(x)));
v1=[-1e-3 -1e-5 -1e-7];
v2=[1e-3 1e-5 1e-7];
for i=1:3
    x= linspace(v1(i),v2(i),100);
    plot(x(i), f(x(i)), 'r',x(i), fm(x(i)), 'k');
end