function [eAbs, eRel, eRelPor, d] = calcError(xe, xa)
% calcError(xe, xa): Funcion que recibe como parametros dos valores y devuelve e informa el error 
% absoluto, el error relativo, el error relativo porcentual y la cantidad de cifras decimales 
% significaitvas
%
% INPUT: 
% xe: Valor exacto
% xa: Valor aproximado
%
% OUTPUT:
% eAbs: Error absoluto
% eRel: Error relativo
% eRelPor: Error relativo porcentual
% d: Numero de cifras significativas

% Calculo de errores
eAbs = abs(xe-xa);
eRel = abs(eAbs./xe);
eRelPor = eRel*100;

% Calculo de d
d = 0;
while eRel < .5*10.^(-d)
    d = d+1;
end

fprintf('El error absoluto es: %.10f \n', eAbs);
fprintf('El error relativo es: %.10f \n', eRel);
fprintf('El error relativo porcientual es: %.10f%% \n', eRelPor);
fprintf('La cantidad de cifras significativas es: %d \n', d - 1);
end 

