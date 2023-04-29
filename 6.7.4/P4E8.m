%EJERCICIO 8 PRACTICA 4
clear,clc,close all
x=-5:.01:5;
y=x;
[X,Y]=meshgrid(x,y);
G1= (8*X - 4*(X.^2) + (Y.^2) + 1)/8;
G2= (2*X - (X.^2) +4*Y - Y.^2 + 3)/4;
figure(1)
subplot(1,2,1), mesh(X,Y,G1), hold on;
subplot(1,2,2), mesh(X,Y,G2), grid on;
figure(2)
contour(X, Y, G1, [0, 0], 'r'), hold on; % los [0, 0] son para que se genere una sola linea de revolucion
contour(X, Y, G2, [0, 0], 'b'), grid on;
%aproximacion con punto fijo
tol = 1e-9;
itmax = 15;
P0=[0 -0.5];
P1=[-1 4];
P2=[3 4];
P3=[2 -0.5];
[Pk, iter]=PuntoFijo('G2',P3,tol,itmax)
plot(Pk(1), Pk(2), 'k*');