function [res]= multi (f1, f2, v)
%esta funcion me permite obtener a partir de dos funciones y un vector, el
%producto de los valores de las funciones evaluados en las funciones
%lo unico que debo hacer el declarar dos funciones y un vector en el
%algoritmo principal
for (i=1:1:3)
    res(i)= f1(v(i)) * f2(v(i));
end
disp (res)