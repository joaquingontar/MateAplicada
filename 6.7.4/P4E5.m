%EJERCICIO 5 PRACTICA 4
clear, clc, close all
f=@(x)x.^3-x.*3+2;
x0=1.2;
tol=1e-5;
df=@(x) 3.*x.^2-3;
itmax=30;
NewtonRaphson(f,df,x0,tol,itmax)
