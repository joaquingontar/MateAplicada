% Script: ZoomPoli
% Plotea (x-1)^6 alrededor de x=1 con escala creciente
% pero evaluado via x^6 - 6x^5 + 15x^4 - 20x^3 + 15x^2 - 6x +1
% es como que va haciendo un zoom generando subintervalos
clear, clc, close all;
k=0;
n=100;
for delta = [.1 .01 .008 .007 .00005 .00001 ]
  x = linspace(1-delta,1+delta,n)'; %el comando linspace define los subintervalos
  y = x.^6 - 6*x.^5 + 15*x.^4 - 20*x.^3 + 15*x.^2 - 6*x + 1;
  yy = (x-1).^6;
  k = k+1;
  subplot(2,3,k), plot(x,y,x,zeros(1,n),x,yy), grid on %x,zeros es para plotear el eje de las absisas
  axis([1-delta 1+delta, -max(abs(y)) max(abs(y))]) %este comando es para que se vea bien, ver help
end
