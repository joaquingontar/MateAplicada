%EVALUACION
%AUTOR: Gonzalez Targon Joaquin
%LEGAJO: G-5767/3
%COMISION: 510
%AUTOR: Gonzalez Targon Joaquin
%LEGAJO: G-5767/3
%COMISION: 510
clear, clc, close all
%EJERCICIO 2
A=[1 1 1 0 0 0; 0 -1 0 1 -1 0; 0 0 -1 0 0 1; 0 0 0 0 1 -1; 0 10 -10 0 -15 -5; 5 -10 0 -20 0 0];
b=[0 0 0 0 0 200]';
% a) Los metodos que conocemos para resolver el sistema de ecuaciones
% lineales son factorizacion LU y Gauss. 
x=Gauss(A,b);
fprintf('la solucion del sistema es:\n');
disp(x);
[L U P]= lu(A);
y= DescompLU(A,b);
fprintf('utilizando descomposicion LU me da el mismo resultado...\n');
disp(y);
% convergencia del metodo...
%Utilizo la funcion diagdom
z=diagdom(A);
% b) para verificar la solucion, utilizo el operador barra invertida
fprintf('La solucion obtenida con el operador barra invertida es: \n');
x1=A\b;
disp(x1);
if x==x1
    fprintf('las soluciones son iguales\n');
else
    fprintf('las soluciones NO son iguales\n');
end
%esto sucede por un error de redondeo por las limitaciones de la maquina 

% c) es esperable los signos de las componentes de los vectores

%Si es esperable que tengan esos signos las componentes, ya que se tienen
%que cumplir las leyes de Kirchoff
%en el caso del nodo 2 vemos que todas las flechitas estan entrando al nodo
%por lo tanto alguna/s de las corrientes tienen que tener signo opuesto,
%como es el caso en que la corriente i32 e i52 tiene signo opuesto, la i43 y la
%i54 tambien
%como i54 esta entrando al nodo 5 e i52 esta saliendo del nodo 5, i65 tiene
%es la resta de i52 menos i65, me da que i65 sale del nodo 5 tambien
