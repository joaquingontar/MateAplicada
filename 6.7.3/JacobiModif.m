function [x, iter] = JacobiModif(A,b,x0,tol,itmax) %MODIFICADO, CON UNA SALIDA DE ITERACION
% Metodo iterativo de Jacobi
% A     : matriz invertible nxn 
% b     : lado derecho nx1
% x0   : estimacion inicial nx1
% tol  : tolerancia
% itmax : numero maximo de iteraciones
% x     : vector nx1 aproximacion solucion SEL Ax=b
%
% Autores: Javier Signorelli - Javier Sorribas (2010)
% Modificacion: Luciano Ponzellini Marinelli (2015)
fprintf('METODO JACOBI\n');

n = length(b);
x0=x0';

if diagdom(A) == 0
    disp('No se garantiza convergencia');	
end

iter = 0;

while 1   
   iter=iter + 1;

   for i =1:n
      x(i) = b(i);
      for j=1:n
         if j ~= i
            x(i) = x(i) - A(i,j)*x0(j);
         end 
      end
      x(i) = x(i) / A(i,i);
   end
   
   err = normap(x-x0,2);
   
   if err < tol 
    x=x';  break
   end

   if iter == itmax 
      disp('Numero maximo de iteraciones alcanzado');	
    x=x';  break
   end
   
   x0 = x;
   
end
    disp(x);
      fprintf('el numero de iteraciones en el metodo es:\n'); 
     disp(iter)
end