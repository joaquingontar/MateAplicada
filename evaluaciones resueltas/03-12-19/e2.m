%EJERCICIO 2 
clear, clc, close all
A=[8 3 -2 1 2; 1 4 1 1 1;5 1 7 0 1; 1 2 3 9 3;-1 0 1 -2 1];
b=[15 30 35 40 45];
tol= 1e-9;
itmax=200;
x0=zeros(length(b),1);
x1=Jacobi(A,b,x0,tol,itmax);
x2=GaussSeidelModif(A,b,x0,tol,itmax);
fprintf('Como se puede ver con el metodo de Gauss Seidel diverge y con el metodo de Jacobi converge a:\n');
disp(x1)
%c) se puede asegurar la convergencia si la matriz es diagonalmente
%dominante
    M = 1;
    O = ones(5);
    I = eye(5);
    nIt = 1;
    nItMax = 10;
    while 1
        Aux = A.*(O + ((M-1)*I));
        esDiagDom = diagdom(Aux);
        if esDiagDom 
            fprintf(' Puedo asegurar la convergencia del SEL para M >= %d\n', M-1);
            break;
        elseif nIt == nItMax
                fprintf(' Numero max de iteraciones alcanzado\n');
                break;
            else
            M = M + 1;
            nIt = nIt + 1;
        end
    end            
