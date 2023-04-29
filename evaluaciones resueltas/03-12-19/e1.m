%EJERCICIO 1
clear,clc,close all
f=@(x) (1-sin(x))/x;
% a) evaluando cerca de pi/2 va a ser inexacto porque el seno se aproxima
% mucho a 1, lo que pasa es que por restar dos numero muy aproximados se produce un error de redondeo
% por corrimiento de la mantiza y perdida de cifras significativas
fm=@(x) @(x) (sin(x).^2)./(x.*(1+cos(x)));
a = [-1e-3 -1e-5 -1e-7];
b = [1e-3 1e-5 1e-7];
    for i = 1:3
        x = linspace(a(i), b(i),100);
        subplot(1,3,i), plot(x, f(x), 'r', x, fm(x), 'b'), hold on, grid on;
        legend(' f original', ' f modificada', 'Location', 'northwest');
    end
