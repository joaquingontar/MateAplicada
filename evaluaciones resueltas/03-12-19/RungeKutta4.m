function [t,y] = RungeKutta4(fnom,a,b,y0,n)
% Metodo de Runge-Kutta para aproximar la solucion de un PVI
% ENTRADA
% fnom   : nombre funcion que define la EDO y'=f(t,y)
% a,b       : extremos del intervalo [a,b]
% y0         : condiciÃ³n inicial y(t0)=y0
% n           : numero de pasos
% SALIDA
% t            : vector de abscisas
% y            : vector de ordenadas
%
% Autor   : Luciano Ponzellini Marinelli (2015)

fprintf(' Metodo de Runge-Kutta\n')
fprintf(' k         t_k            y_k \n')

h = (b-a)/n;
t = a:h:b;
y(1) = y0;

fprintf('%3.0f  %10.6f  %10.6f \n',0, t(1),y(1))

for k=1:n
    k1 = fnom(t(k), y(k));
    k2 = fnom(t(k)+(h/2), y(k)+(h/2)*k1);
    k3 = fnom(t(k)+(h/2), y(k)+(h/2)*k2);
    k4 = fnom(t(k)+ h, y(k)+h*k3);
    y(k+1) = y(k) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
    
    fprintf('%3.0f  %10.6f  %10.6f \n',k, t(k+1),y(k+1));
end

fprintf('Tamaño del paso: %12.6f \n',h);
fprintf('Numero de pasos: %3.0f \n',n);

end
