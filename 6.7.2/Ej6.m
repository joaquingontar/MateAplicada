% Script: Ejercicio 6

clear, clc, close all

fprintf('El valor para el seno es: \n');

for i = [1 10 20 50 100 1000]
    seno = sin(pi./2 + 2*pi*(10.^i));
    fprintf('j = %d   %.10f\n', i, seno);
    calcError(1, seno);
    fprintf(' ================= \n');
end