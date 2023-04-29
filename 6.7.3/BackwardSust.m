function x = BackwardSust (A,b)
%esta funcion me arroja como solucion el vector x de la ecuacion Ax=b a
%partir de ingresar como entrada la matriz triangular superior A y el vector columna b
%el desarrollo de este algoritmo es de sustitucion regresiva
[n n]=size(A)
%verifico q la matriz sea cuadrada
for q=1;n
    if(A(q,q)==0)
        disp('A no es inversible. No hay solucionn o no es unica\n')
        break
    end
end
Aum = [A b]; %genero la matriz aumentada
%empiezo con la sustitucion
x(n)=Aum(n,n+1)/Aum(n,n);
for i=n-1 :-1:1
    x(i)=(Aum(i,n+1)-Aum(i,i+1:n)*x(i+1:n)')/Aum(i,i);
end
x=x'
end

% EJEMPLO n = 3
% a11 a12 a13 = b1      a11x1 a12x2 a13y3 = b1   
% 0   a22 a23 = b2        0x1 a22x2 a23x3 = b2
% 0   0   a33 = b3        0x1   0x2 a33x3 = b3

% x3 = b3/a33

% x(k) = (Aum(k,n+1) - Aum(k,k+1:n)*x(k+1:n)') / Aum(k,k)
% k = 2
% x(2) = (Aum(2,3+1) - Aum(2,2+1:3)*x(2+1:3)') / Aum(2,2)
% x(2) = (Aum(2,4) - Aum(2,3:3)*x(3:3)') / Aum(2,2)
% x(2) = (b2 - a23*x3) / a22
% k = 1
% x(1) = (Aum(1,3+1) - Aum(1,1+1:3)*x(1+1:3)') / Aum(1,1)
% x(1) = (Aum(1,4) - Aum(1,2:3)*x(2:3)') / Aum(1,1)
% x(1) = (b1 - [a12 a13]*[x2; x3])/ a11
% x(1) = (b1 - (a12*x2 + a13*x3))/ a11
% x(1) = (b1 - a12*x2 - a13*x3)/ a11

% x = [x1 x2 x3]
% x = [b1 - a12*x2 - a13*x3)/a11    (b2 - a23*x3)/a22   b3/a33]

