function x = NewtonRaphson(fnom,fpnom,x0,tol,itmax)
% Metodo de Newton-Raphson
% ENTRADA
% fnom   : nombre funcion que define la ecuacion no lineal
% fpnom  : nombre derivada funcion fnom 
% x0     : estimacion inicial
% tol    : tolerancia
% itmax  : numero maximo de iteraciones
% SALIDA
% x      : raiz aproximada
%
% Autores: Javier Signorelli - Javier Sorribas (2010)
% Modifcacion: Luciano Ponzellini Marinelli (2015)

fprintf(' Metodo iterativo de Newton-Raphson\n\n')
fprintf(' Iter       x              f(x)              Error\n')

iter= 1;

while 1
   fx = fnom(x0); %evaluo a la funcion en cero y lo asigno en fx
   fpx = fpnom(x0); %evaluo a la derivada en cero y lo asigno en fpx
   x = x0 - fx/fpx; %iteracion de newton raphson
      
   fprintf('%3.0f  %10.6f  %10.6f  %10.6f \n', iter, x, fnom(x),abs(x-x0))
   
   if abs(x-x0) <= tol & abs(fnom(x)) <= tol %primer criterio de parada, tolerancia
	  	fprintf(' Se alcancia≥ la tolerancia. \n\n')
		fprintf(' Resultado final:\n Raiz aproximada = %12.6f \n',x)
      return
   end
   
   x0 = x;
   iter = iter +1;
   
   if iter > itmax %segundo criterio de parada, numero maximo de iteraciones
	   fprintf(' Numero de iteraciones maximo alcanzado. \n\n')
		fprintf(' Resultado parcial:\n Ra√≠z aproximada = %12.6f \n',x)
   	break
   end
end

%end (Matlab)
%endfunction (Octave)

