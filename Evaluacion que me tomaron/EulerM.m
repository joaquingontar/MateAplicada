function [t,x,y] = EulerM(fnom, gnom,a,b,x0, y0,n)
% Metodo de Euler para aproximar la solucion de un PVI
% ENTRADA
% fnom   : nombre funcion que define la EDO y'=f(t,y)
% a,b       : extremos del intervalo [a,b]
% y0         : condicion inicial y(t0)=y0
% n           : numero de pasos
% SALIDA
% t            : vector de abscisas
% y            : vector de ordenadas
%
% Autor   : Luciano Ponzellini Marinelli (2015)

fprintf(' Metodo de Euler MODIFICADO\n')
fprintf(' k\t\t_k\t\t\t x_k\t\t\t y_k\n')

h = (b-a)/n; %defino el h( que es el paso), es decir el paso(long de intervalo/n)
t = a:h:b; %discretizacion
y(1) = y0; 
x(1) = x0;

fprintf('%3.0f\t\t%10.6f\t\t\t%10.6f\t\t%10.6f \n',0, t(1), x(1),y(1))

for k=1:n
    x(k+1) = x(k) + h*fnom(t(k),x(k), y(k));
    y(k+1) = y(k) + h*gnom(t(k), x(k) ,y(k));
    fprintf('%3.0f\t\t%10.6f\t\t%10.6f\t\t\n',k, t(k+1),x(k+1),y(k+1));
end

fprintf('Tamaño del paso: %12.6f \n',h);
fprintf('Numero de pasos: %3.0f \n',n);
%no necesito criterio de salida porque se repite n veces
end
