%EJEMPLO PUNTO FIJO
clear,clc,close all
[Pk1,iter1]=PuntoFijo('G1',[0 1],1e-9,15)
t_contour
hold on
plot(Pk1(1),Pk1(2),'k*')
%si intento obtener la otra raiz con esta generatriz me va a dar que
%diverge
%debo usar la otra generatriz...
[Pk2,iter2]=PuntoFijo('G2',[2 0],1e-9,40)%le aumento la tol porque no alcanzan
plot(Pk2(1),Pk2(2),'ko')

