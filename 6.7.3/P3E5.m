% Script: Ejercicio 5 Practica 3

clear, clc, close all

A = [3 -1 1; 3 6 2; 3 3 7];
b = [1; 0; 4];
x0=zeros(3,1);
tol= 1e-3;
itmax=30;
fprintf('la solucion utilizando el metodo de Jacobi es:\n');
x1=Jacobi(A,b,x0,tol,itmax)
%puedo asegurar la convergencia del metodo de Jacobi a la solucion del SEL solo en el caso de que
%la diagonal principal sea dominante, para esto ultilizo la funcion diagdom
if diagdom(A) == 0
    disp('No se garantiza convergencia');	
else
    disp('el metodo converge a la solucion del sistema')
end
    
%en el item c debo realizar lo mismo pero con el metodo Gauss Seidel
fprintf('la solucion utilizando el metodo de Gauss Seidel es:\n')
x2=GaussSeidel(A,b,x0,tol,itmax)
%igual que en el caso del metodo de jacobi, puedo asegurar la convergencia del metodo de Jacobi a la solucion del SEL solo en el caso de que
%la diagonal principal sea dominante, para esto ultilizo la funcion diagdom


