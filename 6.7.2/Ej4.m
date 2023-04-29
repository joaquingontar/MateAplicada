% Script: Ejercicio 4
    clear, clc, close all

% Defino el vector de ceficientes de la f y se lo paso a la funcion
format long;

vector = [1 -1000000.000001 1];
sol1 = cuad(vector);
sol2 = cuad_mejor(1,-1000000.000001, 1 );

fprintf('Las soluciones usando la f cuad son: \n');
fprintf('x1 = %.10e x2 = %.10e \n', sol1(1), sol1(2));
fprintf(' =============================== \n');

fprintf('Las soluciones usando la f cuad_mejor son: \n');
fprintf('x1 = %.10e x2 = %.10e \n', sol2(1), sol2(2));
fprintf(' =============================== \n');

x_exacto = roots(vector);

fprintf('ERROR PARA cuad: \n');
calcError(x_exacto(1), sol1(1));
fprintf(' =============================== \n');
calcError(x_exacto(2), sol1(2));
fprintf(' =============================== \n');

fprintf('ERROR PARA cuad_mejor: \n');
calcError(x_exacto(1), sol2(1));
fprintf(' =============================== \n');
calcError(x_exacto(2), sol2(2));
fprintf(' =============================== \n');





