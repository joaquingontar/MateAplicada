%lectura de los archivos .dat
load rhs.dat %matriz A 3x3
load matriz.dat % vector b 3x1
%resolucion del apartado "b" Ax=b
x=matriz\rhs;
save sol.dat x -ascii
fprintf('el resultado de Ax=b es; \n');
disp(x);

