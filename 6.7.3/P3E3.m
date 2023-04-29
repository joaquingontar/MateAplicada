% Script: Ejercicio 3 Practica 3
% Author: Joaquin Gonzalez Targon
% Date: 27/02/22

clear, clc, close all

L = [1 0 0; 0 1 0 ; 1 -2 1];
U = [2 0 1; 0 3 -1; 0 0 -2];
P = [0 1 0; 1 0 0 ; 0 0 1 ];
  
b = [-0.2; 2.5; 1.9];
%a) por metodo de Gauss
% Sabemos que PA = LU entonces A = (P^-1)LU, luego por teorema P^-1 = P'
A=(P')*L*U
sol_a=Gauss(A,b);
fprintf('la solucion del ejercicio por metodo de Gauss es:\n');
disp(sol_a)
%b) descomposicion LU
sol_b=DescompLU(A,b);
fprintf('la solucion del ejercicio por factorizacion incompleta LU es:\n');
disp(sol_b)
%c) mldivide, barra invertida
sol_c=mldivide(A,b);
fprintf('la solucion del ejercicio por mldivide(A,b) es:\n');
disp(sol_c)
fprintf('a simple vista no hubo errores de redondeo pero que haya mas ceros despues de la coma me indica que hay mas cifras que no puedo observar');
