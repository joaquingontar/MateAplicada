function raices = cuad(vector)
% cuad(vector): Funcion que recibe como parametros los coeficientes de una
% funcion cuadratica y calcula las raices de dicha funcion y ademas
% devuelve el tipo de raices encontradas
%
% INPUT: 
% vector: Vector de coeficientes de una funcion cuadratica [a, b ,c]
%
% OUTPUT:
% raices: Raices de la funcion [x1, x2] y el tipo de raices
%
% Author: Federcio Scheytt
% Date: 11/11/2021

a = vector(1);
b = vector(2);
c = vector(3);

x1 = (-b + sqrt(b.^2-4*a*c))./(2*a);
x2 = (-b - sqrt(b.^2-4*a*c))./(2*a);

raices(1) = x1;
raices(2) = x2;

if x1 == x2     % CONSULTAR
    fprintf('Las raices son reales iguales.\n')
    raices = x1;
elseif imag(x1) ~= 0
    fprintf('Las raices son complejas conjugadas.\n')
else 
    fprintf('Las raices son reales.\n')

% Ejemplos:
% f(x) = x^2 -3x +2 = (x-2)(x-1) -> x1= +2 ; x2= +1
% g(x) = x^2 +1x -2 = (x-1)(x+2) -> x1= +1 ; x2= -2
% h(x) = x^2 -2x +1 = (x-1)(x-1) -> x1= +1 ; x2= +1
% i(x) = x^2 +0x +1 = (x-i)(x+i) -> x1= +i ; x2= -i

end 