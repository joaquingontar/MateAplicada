%EJERCICIO 2
clear, clc, close all
Tc=[304.2, 154.4, 647.4, 5.2];
Pc=[72.9, 49.7, 218.3, 2.26];
R=0.08205746;
%obtengo los valores de a y b, para las diferentes temperaturas y presiones
fprintf('VALORES DE a Y b\n');
sust=["CO2", "O2", "H20", "He"];
for i=1:length(Tc)
    RT(i)=R.*Tc(i);
    a(i)=(27*(R^2)*((Tc(i))^2))/(64*Pc(i));
    b(i)= (R*Tc(i))/(8*Pc(i));
    fprintf('%s\t %.3f\t %.3f\n',sust(i), a(i), b(i));
end
%defini mi ecuacion, pasando la presion al otro lado de la igualdad, teneniendo como variable independiente al volumnen
f=@(v)(RT(i)./(v-b(i)))-(a(i)./v.^2)-Pc(i);
%ploteo la funcion para ver donde estan (aproximadamente mis raices
vp=0:.005:05;
%plot(vp,f(vp)), grid on;
%a partir del metodo de Newton Raphson derivado obtengo la aproximacion a
%la solucion de mi ecuacion, es decir las raices
for i=1:length(Tc)
    tol=1e-4;
    itmax= 30;
    x0= 0.05;
    r(i)=NewtonRaphsonDeriv(f, x0, tol, itmax);
    subplot(2,2,i), plot(r(i), f(r(i)), 'k'), axis([-.5 .5 -.5 .5]), hold on, grid on;
end
