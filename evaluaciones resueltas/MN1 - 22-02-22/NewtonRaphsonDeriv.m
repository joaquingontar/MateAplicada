function x = NewtonRaphsonDeriv(fnom,x0,tol,itmax) %NO NECESITO INGRESAR LA DERIVADA PORQUE LO HAGO A TRAVES DE df1dx
% Metodo de Newton-Raphson utilizando derivacion numerica
% ENTRADA
% fnom   : nombre funcion que define la ecuacion 
% x0         : estimacion inicial
% tol        : tolerancia
% itmax   : numero maximo de iteraciones
% SALIDA
% x            : raiz aproximada
% USAMOS
% dfidx     : funcion que calcula la derivada numerica primera aproximada
%
% Autores: Javier Signorelli - Javier Sorribas (2010)
% Modifcacion: Luciano Ponzellini Marinelli (2015)

fprintf(' Metodo iterativo de Newton-Raphson con derivada numerica\n\n')
fprintf(' Iter        x               f(x)               Error \n')

iter= 1;

while 1
   fx = fnom(x0);
   fpx = df1dx(fnom,x0); %funcion df1dx
   x = x0 - fx/fpx;
   
   fprintf('%3.0f  %10.6f  %10.6f  %10.6f \n', iter, x, fnom(x),abs(x-x0))
   
   if abs(x-x0) <= tol && abs(fnom(x)) <= tol 
	  	fprintf(' Se alcanza la tolerancia. \n\n')
		fprintf(' Resultado final:\n Raiz aproximada %12.6f \n',x)
      return
   end      
   
   x0 = x;
   iter = iter +1;
   
   if iter > itmax 
	   fprintf(' Numero de iteraciones maximo alcanzado. \n\n')
		fprintf(' Resultado parcial:\n Raiz aproximada = %12.6f \n',x)
   	break
   end
end

end

