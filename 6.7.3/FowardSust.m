function x= FowardSust (A,b)
%esta funcion me arroja como solucion el vector x de la ecuacion Ax=b a
%partir de ingresar como entrada la matriz triangular inferior A y el vector columna b
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
x(n)=Aum(1,n+1)/Aum(1,1);
for i=1:1:n
    x(i)=(Aum(i,n+1)-Aum(i,1:i-1)*x(1:i-1)')/Aum(i,i);
end
x=x'
end
% EJEMPLO n = 3
% a11  0   0  = b1      a11y1  0 y2  0 y3 = b1
% a21 a22  0  = b2      a21y1 a22y2  0 y3 = b2  
% a31 a32 a33 = b3      a31y1 a32y2 a33y3 = b3

% y1 = b1/a11

% y(k) = (Aum(k,n+1) - Aum(k,1:k-1)*y(1:k-1)') / Aum(k,k)
% k = 2
% y(2) = (Aum(2,3+1) - Aum(2,1:1)*y(1:1)') / Aum(2,2)
% y(2) = (Aum(2,4) - Aum(2,1:1)*y(1:1)') / Aum(2,2)
% y(2) = (b2 - a21*y1) / a22
% k = 3
% y(3) = (Aum(3,4) - Aum(3,1:2)*y(1:2)') / Aum(3,3)
% y(3) = (b3 - [a31 a32]*[y2; y3])/ a33
% y(3) = (b3 - (a31*y2 + a32*y3))/ a33
% y(3) = (b3 - a31*y2 - a32*y3)/ a33

% y = [y1 y2 y3]
% y = [b1/a11    (b2 - a21*y1)/a22   (b3 - a31*y2 - a32*y3)/a33] 
