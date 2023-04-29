function TaylorExp(x,n)
%x es el valor donde quiero aproximar exp(x)
%n es la cantidad de terminos que quiero de la suma
nTerms = n;
f = exp(x); %No es necesario crear una arreglo para los diferentes valores de la funcion porque en este caso el valor de x es unico
s = 1;
term = 1;
for k=1:nTerms
    term = x.*term/k; %term es una variable que contiene el valor de cada termino de la cuma
    s = s+ term; %contador que suma los valores de todos los terminos de la suma
    err = abs(f - s); %calculo del error absoluto, lo almaceno en una variable
    relerr = err/f*100; %calculo del error relativo porcentual
    %Para el item b se deben imprimir el valor de la sumas parciales
    fprintf('Valor de la suma: %.4e \n El termino que se esta sumando es: %.4e \n El error absoluto cometido es: %.4e\n',s, term, err)
end
fprintf('=========================================================================================================\n')
fprintf('El valor de la funcion en  %d para %d terminos es:  %d \n El valor de las sumas parciales es:  %d \n ', x, n,f,s)

fprintf ('El error abs es: %.4e \n El error relativo porc es: %.4e\n',err,relerr)


