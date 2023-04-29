function x = Gauss(A,b)
% Calculo solucion del sistema lineal Ax=b mediante eliminacion Gaussiana
% Datos:
%     A matriz invertible nxn
%     b vector nx1
% Resultado:
%     x solucion nx1 del sistema Ax=b
%
% Autores: Javier Signorelli - Javier Sorribas (2010)
% ModificaciÃ³n: Luciano Ponzellini Marinelli (2015)

% Inicializacion
[n n] = size(A); % almaceno el tamaño de la matriz A

% Calculo matriz ampliada
Aum = [A b];

for q=1:n-1 %hago variar el q de 1 a n-1, recorro columna por columna, son los n-1 pasos de la eliminacion Gaussiana
    
% Pivoteo parcial con escalonamiento
	S = max(abs(Aum(q:n,q:n))');
   [Y,j] = max(abs(Aum(q:n,q))./S');
   
% Intercambio fila q-esima con fila j-esima
	C = Aum(q,:);
	Aum(q,:) = Aum(j+q-1,:);
	Aum(j+q-1,:) = C;

% Verificacion
	if (Aum(q,q) == 0)
   	  disp('A no es inversible. No hay solucion o no es unica');
    break
    end
   
% Proceso de eliminacion en columna q-esima
	for k=q+1:n %recorro las filas q estan debajo de mi pivote
      m = Aum(k,q)/Aum(q,q); %este es el multiplicador 
      Aum(k,q:n+1) = Aum(k,q:n+1) - m*Aum(q,q:n+1); %modifico las filas posteriores a mi pivote
      %el q:n+1 se refiere a toda la fila
    end
end

% Sustitucion regresiva (hacia atras)
x(n) = Aum(n,n+1)/Aum(n,n); %divide la ultima componente del vector b con el valor que se encuentra en (n,n) en la matriz A, es decir el ultimo valor
for k=n-1:-1:1
   x(k) = (Aum(k,n+1) - Aum(k,k+1:n)*x(k+1:n)') / Aum(k,k);
end

x=x';

end

