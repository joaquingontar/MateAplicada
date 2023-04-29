function z = diagdom(A)
% Determina si la matriz A es diagonalmente dominante
% Datos: A matriz invertible nxn
% Resultado: z variable logica: 0 false - 1 true
%
% Autores: Javier Signorelli - Javier Sorribas (2010)
% Modificacion: Luciano Ponzellini Marinelli (2015)
% Modificacion: Gonzalez Targon Joaquin (2023)

n = length(A);
i = 0;
z = 1;

while ( i < n && z == 1 )
   i = i+1;
   if sum(abs(A(i,:))) >= 2*abs(A(i,i)) 
        z = 0;
   end
end
if z==1
    fprintf('la matriz es diagonal dominante')
else
    fprintf('la matriz NO es diagonal dominante')
end
end 
