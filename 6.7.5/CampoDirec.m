function CampoDirec(xmin,xmax,ymin,ymax,fpvi)
% Funcion para graficar un campo de direcciones
% ENTRADA
 %
% Autor: Luciano Ponzellini Marinelli (2016)

[T,Y] = meshgrid(xmin:xmax,ymax:-1:ymin); %hago un mashado para definir donde voy a calcular la f del pvi
dT = ones(xmax-xmin+1,ymax-ymin+1)'; % para grafico el vector
dY = fpvi(T,Y); %funcion fpvi evaluada en la grilla

figure, quiver(T,Y,dT,dY), hold on, grid on %para graficar flechitas
legend('campo de direcciones')

end
