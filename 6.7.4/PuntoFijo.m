function [Pk,iter] = PuntoFijo(Fnom,P0,tol,itmax) %ACORDARSE QUE Fnom ES STRING, VA CON COMILLAS
% Datos
%   - Fnom: (string) funcion m-file que definen las  generarices
%   - P0: estimacion inicial como vector fila (x_0,y_0)
%   - tol: tolerancia
%   - itmax: numero iteraciones maximas
% Resultado
%   - Pk: aproximacion solucion
%   - iter: numero iteraciones realizadas
%
% Autores: Javier Signorelli - Javier Sorribas (2010)
% Modifcacion: Luciano Ponzellini Marinelli (2015)

fprintf(' Metodo iterativo de Punto Fijo\n\n')
fprintf(' Iter      Pk                      Qk\n')

iter = 0;
fprintf('%3.0f %15.7f %15.7f\n', iter, P0)

while 1
   Pk = feval(Fnom,P0);%feval evalua el punto P0 en Fnom 
   err = abs(norm(Pk-P0)); %calculo la norma (es el error)
   relerr = err / (norm(Pk)+eps); %calculo el error relativo
   
   if(err < tol || relerr < tol) %criterio de parada, error
	  	disp('Se alcanza la tolerancia.')
		disp('Resultado final: ')
		fprintf(' %15.7f  %15.7f \n',Pk),  break
   end
   
   if iter > itmax %criterio de parada, maximas iteraciones
	  disp('Numero de iteracioneas maximo sobrepasado.'),   break
   end
   
   iter = iter + 1;
   P0 = Pk;
   fprintf('%3.0f %15.7f %15.7f\n', iter, Pk)
   
end 

end

