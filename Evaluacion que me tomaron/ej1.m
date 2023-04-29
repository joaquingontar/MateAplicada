%EVALUACION
%AUTOR: Gonzalez Targon Joaquin
%LEGAJO: G-5767/3
%COMISION: 510
clear, clc, close all
%EJERCICIO 1
p=@(x) (x-1).^7;
% Binomio de Newton
%p(x)= (x.^7.*y.^0)+(x.^6.*y.^1)+(x.^5.*y.^2)+(x.^4.*y.^3)+(x.^3.*y.^4)+(x.^2.*y.^5)+(x.^1.*y.^6)+(x.^0.*y.^7);
p1=@ (x) x.^7.*1-x.^6.*7+x.^5.*21-x.^4.*35+x.^3.*35-x.^2.*21+x.^1.*7-1;
v=0:.1:10;
figure(1)
plot(v, p(v),'r', v, p1(v),'k');
title('prueba igualdad binomio');
% b)
v1= 0.9:.0001:1.1;
v2=0.99:.0001:1.01;
v3= 0.999:.0001:1.001;
figure(2)
subplot(1,3,1), plot(v1, p(v1), 'r', v1, p1(v1), 'k'), grid on, hold on;
title('intervalo [0.9 1.1]');
legend('funcion', 'binomio')
subplot(1,3,2), plot(v2, p(v2), 'r', v2, p1(v2), 'k'), grid on, hold on;
title('intervalo [0.99 1.01]');
legend('funcion', 'binomio')
subplot(1,3,3), plot(v3, p(v3), 'r', v3, p1(v3), 'k'), grid on, hold on;
title('intervalo [0.999 1.001]');
legend('funcion', 'binomio')
%c) el error que se produce es porque al modificar el intervalo con un
%numero chiquito se puede generar un gran error como salida
%por el redondeo se produce un corrimiento de la mantiza y la perdida de cifras significativas
%En este caso no hay error de truncamiento




