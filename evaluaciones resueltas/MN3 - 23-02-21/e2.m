%EJERCICIO 2
clear, clc, close all
A=[16, -120, 240, -140; -120, 1200,-2700, 1680; 240, -2700, 6480, -4200; -140, 1680, -4200, 2800],
[L U P]=lu(A);
eR4=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
% la factorizacion LU es util ya que obteniendo las matrices podemos
% resolver el sistema de ecuaciones para cuelquiera sea el vector b
%ademas al resolver a traves de la sustitucion regresiva o progresiva, es
%muy barato computacionalmente
fprintf('L=\n', L);
disp(L);
fprintf('U=\n', U);
disp(U);
fprintf('P=\n', P);
disp(P);
%b) resolver el sistema anterior a traves de la sustitucion regresiva para
%i=1,2,3,4
i=[1 2 3 4];
for i=[1 2 3 4]
    b=eR4(:,i);
    x=DescompLU(A,b);
    fprintf('la solucion del sistema del x %d es:\n', i);
    disp(x);
    B(:,i)=x
end
%c) que representa la matriz B formada por los vectores columna de las
%solucion?
% representa la matriz inversa de A
fprintf(' la matriz B representa la matriz inversa de A\n');
disp(B);
fprintf('Haciendo el producto de A por B puedo ver que obtengo la matriz identidad A\n');
disp(A*B);

