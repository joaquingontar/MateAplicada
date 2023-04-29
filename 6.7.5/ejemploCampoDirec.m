%EJEMPLO CAMPO DIREC
clear, clc, close all
fpvi=@(t,y) (t-y)/2 
CampoDirec (0,5,0,5,fpvi)
% xmin  : valor minimo del eje de abscisas
% xmax : valor maximo del eje de abscisas
% ymin  : valor minimo del eje de ordenadas
% ymax : valor maximo del eje de ordenadas
% fpvi    : funcion que define mi PVI y' = f(t,y)

%Utilizo la funcion Euler
[t,y]=Euler(fpvi,0,3,1,6)
plot(t,y,'r'), grid on, hold on
