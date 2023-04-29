%EJERCICIO 2
clear, clc, close all
A=[5,7;7,10];
b=[0.7 1]';
% a) resolver numericamente
x1=Gauss(A,b);
[L U P]=lu(A);
x2=DescompLU(A,b); %lo puse para comparar resultados nomas
fprintf('el resultado es:\n');
disp(x1);
% b) Perturbo b
bm=[-0.01 0.01]'; %modificacion
b1=b+bm;
x11=Gauss(A,b1);
[L U P]=lu(A);
x22=DescompLU(A,b1); %lo puse para comparar resultados nomas
fprintf('el resultado con la modificacion de b es:\n');
disp(x11);
%c) 
%Puedo observar que pequeñas perturbaciones del vector b producen grandes perturbaciones en
%    nuestro resultado, esto nos dice que nuestra matriz A esta mal condicionada, para notar esto
%    calculo el numero de condicion:
        kA = norm(A)*norm(inv(A));
        fprintf(' El numero de condicion de A es k(A) = %.4f\n', kA);
%    Dado que el numero de condicion de A es muy grande (mucho mayor a 1) puedo afirmar con
%    seguridad que la matriz A esta mal condicionada.



