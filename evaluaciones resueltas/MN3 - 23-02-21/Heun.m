function [t,y] = Heun(fnom,a,b,y0,n)
% Metodo de Heun para aproximar la solucion de un PVI
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

fprintf(' Metodo de Heun\n')
fprintf(' k         t_k            y_k \n')

h = (b-a)/n; %defino el h( que es el paso), es decir el paso(long de intervalo/n)
t = a:h:b; %discretizacion
y(1) = y0; 

fprintf('%3.0f  %10.6f  %10.6f \n',0, t(1),y(1))

for k=1:n
    y(k+1) = y(k) + h*fnom(t(k),y(k));
    y(k+1) = y(k) + (h/2) * (fnom(t(k),y(k))+fnom(t(k+1),y(k+1)));
    fprintf('%3.0f  %10.6f  %10.6f \n',k, t(k+1),y(k+1));
end

fprintf('Tamaño del paso: %12.6f \n',h);
fprintf('Numero de pasos: %3.0f \n',n);
%no necesito criterio de salida porque se repite n veces
end
