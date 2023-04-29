% Script: Ejercicio 6 Practica 3

clear, clc, close all

A1 = [-1 3; 6 -2];
b1 = [1; 2];
A2 = [1 0 1; -1 1 0; 1 2 -3];
b2 = [2; 0; 0];
A3 = [5 -1 1; 2 8 -1;-1 1 4];
b3 = [10; 11; 3];

x01 = zeros(2,1);
x02 = zeros(3,1);
tol = [1e-3 1e-6 1e-9];
itmax = 30;


for i = 1:3
    
    fprintf('\nResultados para la tolerancia: %.4e \n', tol(i));
    xJ1 = Jacobi(A1, b1, x01, tol(i), itmax);
    xGS1 = GaussSeidel(A1, b1, x01, tol(i), itmax);
    xJ2 = Jacobi(A2, b2, x02, tol(i), itmax);
    xGS2 = GaussSeidel(A2, b2, x02, tol(i), itmax);
    xJ3 = Jacobi(A3, b3, x02, tol(i), itmax);
    xGS3 = GaussSeidel(A3, b3, x02, tol(i), itmax);
    
    fprintf('JACOBI               GAUSS-SEIDEL \n');
    fprintf('a)\n');
    for i = 1:length(xJ1)
        fprintf('x%d: %.4e      x%d: %.4e\n', i, xJ1(i), i, xGS1(i));
    end
    
    fprintf('b)\n');
    for i = 1:length(xJ2)
        fprintf('x%d: %.4e      x%d: %.4e\n', i, xJ2(i), i, xGS2(i));
    end
    
    fprintf('c)\n');
    for i = 1:length(xJ3)
        fprintf('x%d: %.4e      x%d: %.4e\n', i, xJ3(i), i, xGS3(i));
    end
end
