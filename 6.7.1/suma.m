function [vcs] = suma(x,y)
%esta funcion lo que hace es sumar las matrices x e y, y presentarlas en un
%vector columna
x0=x;
y0=y;
[p q]= size(x0);
[t r]= size(y0);
if q>1
    x0=x';
end
if r>1
    y0=y';
end
vcs= x0+y0;
end