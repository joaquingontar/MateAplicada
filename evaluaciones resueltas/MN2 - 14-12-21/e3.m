%EJERCICIO 3
clear, clc, close all
%cargo matrix
load('jpwh_991.mtx');
A=spconvert(jpwh_991);
b=ones(991,1);
%calculo exacto
x=A\b;
%calculo por eliminacion gaussina
x1=Gauss(A,b);
%calculo de normas
r=b-A*x1;
nr1=norm(r,1);
nr2=norm(r,2);
nrinf=norm(r,inf);