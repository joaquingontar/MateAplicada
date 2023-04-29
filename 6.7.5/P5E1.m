%EJERCICIO 1 PRACTICA 5
clear,clc,close all
%acotdado para R=[0 4]x[-4 4]
tmin=0;
tmax=4;
ymin=-4;
ymax=4;
td=0:.1:4
%grafico el campo de direcciones
fpvi=@(t,y) (t-y)/2;
CampoDirec(tmin,tmax,ymin,ymax,fpvi);
hold on
%grafico la funcion
%?(t) = ce?t/2+t?2
%en un c=[-3,-2,-1,0,1,2,3,4,5]
phi=@(t,c) c*exp(-t/2)+t-2;
for c=[-3,-2,-1,0,1,2,3,4,5]
    plot(td,phi(td,c)) %en el plot utilizo el c que me dan
end


