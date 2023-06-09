function x = GaussSeidel(A,b,x0,tol,itmax)
% Metodo Iterativo de Gauss-Seidel
% A     : matriz invertible nxn 
% b     : lado derecho nx1
% x0   : estimacion inicial nx1
% tol  : tolerancia
% itmax : numero maximo de iteraciones
% x     : vector nx1 aproximacion a la solucion SEL Ax=b
%
% Autores: Javier Signorelli - Javier Sorribas (2010)
% Modificacion: Luciano Ponzellini Marinelli (2015)
fprintf('METODO GAUSS SEIDEL\n');

n = length(b);
x0=x0';

if diagdom(A) == 0
    disp('No se garantiza convergencia');
end

% Ejercicio: �Donde se diferencia GaussSeidel.m con Jacobi.m?
%se diferencia en que es un metodo mas "eficiente", el proceso llega al
%objetivo por tolerancia en menor cantidad de iteraciones

x = x0;
iter = 0;
while 1   
   iter = iter + 1;
   
   for i =1:n
      x(i) = b(i);
      for j=1:n
         if j ~= i
            x(i) = x(i) - A(i,j)*x(j); 
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
    disp(x)
      fprintf('el numero de iteraciones en el metodo es: %d\n',iter); 
end

