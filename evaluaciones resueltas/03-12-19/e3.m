%EJERCICIO 3
clear, clc, close all
clear, clc, close all

fpvi = @(t,y) (y.*(t - y))./(t.^2);
a = 1;
b = 2.5;
y0 = 2;
n = 72;

% a) Aproximar la solucion usando Euler
    [te,ye] = Euler(fpvi,a,b,y0,n);
    plot(te, ye, 'r'), hold on, grid on;

% b) Aproximar la solucion usando Runge-Kutta
    [trk,yrk] = RungeKutta4(fpvi,a,b,y0,n);
    plot(trk, yrk, 'b'); 
      
% c) Exacta
    fe = @(z) z./(1/2 + log(z));
    z = 1:0.01:2.5;
    plot(z, fe(z), 'k');
    legend(' Euler', ' Runge-Kutta 4', ' Exacta');
    
    eGFE = abs(fe(2.5) - ye(n+1));
    eGFRK = abs(fe(2.5) - yrk(n+1));
    fprintf(' El error global final de Eule es: %.10f\n', eGFE);
    fprintf(' El error global final de Runge-Kutta es: %.10f\n', eGFRK);
