%EJERCICIO 7 PRACTICA 3
%aproximo con los metodos Jacobi y Gauss Seidel
A = [-4 1 0 1 0 0; 1 -4 1 0 1 0; 0 1 -4 0 0 1; 1 0 0 -4 1 0; 0 1 0 1 -4 1; 0 0 1 0 1 -4];
b = [-100; -20; -20; -180; -180; 100];
x0 = zeros(6,1);
tol = 1e-5;
itmax = 30;
[x1,iter1]=JacobiModif(A,b,x0,tol,itmax);
[x2,iter2]=GaussSeidelModif(A,b,x0,tol,itmax);
%cual converge mas rapido?
dif=iter1-iter2;
if dif>0
    fprintf('el metodo de Gauss Seidel converge mas rapido por una diferencia de iteraciones de:\n')
    disp(abs(dif))
elseif dif<0
    fprintf('el metodo de Jacobi converge mas rapido por una diferencia de iteraciones de:\n')
    disp(abs(dif))
else
    fprintf('los metodos convergen en la mismas cantidad de iteraciones\n')
end
%para poder asegurar la convergencia de cualquiera de los metodos, por
%teorema si la matriz es diagonal dominante puedo asegurar la convergencia
%del metodo
diagdom(A);
