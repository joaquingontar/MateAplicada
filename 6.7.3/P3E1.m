% Script: Ejercicio 1 Practica 3
% Author: Joaquin Gonzalez Targon

clear, clc, close all

A=[2 1 1; 12 11 5;-2 9 0]
b=[1 17 18]'
fprintf('con Gauss\n');
x1=Gauss(A,b)
fprintf('\n con descomposicion LU\n');
x2=DescompLU(A,b)
%utilizando cualquiera de las dos scrips obtengo el mismo resultado
