function deriv = df1dx(fnom,x) %el error es mucho mas chico porque es de orden de h^2
% Derivada primera numerica con formula centrada o(h^2)
% fnom  : nombre de la funcion que define la ecuación 
% x     : puntos de evaluacion
% deriv : puntos de evaluacion de la derivada primera aproximada
%
% Autores: Javier Signorelli - Javier Sorribas (2010)
% Modifcacion: Luciano Ponzellini Marinelli (2015)

   h = 1e-6;
   deriv = (fnom(x+h)-fnom(x-h))/(2*h);

end
