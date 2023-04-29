%EJERCICIO 1
%a) calcular el volumen del cono 
%formula Vc=(pi*h*r^2)/3, siendo:1/3=0.333 ,pi=3.14159 ,h=1 y r=2/3=0,666
%en nuestra maquina se representa:1/3=0.3125 pi= 3, r=0.625 y h=1
%Vc= 0.3125*(3*1*(0.625)^2)
%Vc= 0.3125*(3*(0.390625))
%Vc= 0.3125*(3*(0.375))
%Vc= 0.3125*(3*(0.375))
%Vc=0.3125*(1.125)
%Vc=0.3125*(1.125)
%Vc=0.3515625
%Vc=0.34375
%=====================================================================
%b) explicar los resultados de...

%i) pi/3+eps==pi/3
% eps es el minimo valor que hay entre 1 y el siguiente numero, en este
% caso, eps=0.125
% en nuestra maquina: pi=3, 1/3=0.3125
% 3*0.3125+0.125==3*0.3125
% 0.9375+0.125==0.9375
% 1.0625==0.9375
% 1==0.9375
%el resultado es cero, es falso

%ii) 1/10+2/10==(1+2)/10
% 1/10=0.1, 2/10=0.2
% en nuestra maquina 1/10=0.09375, 2/10=0.1875
% 0.09375+0.1875== 3*0.09375
% 0.28125 == 0.28125
% el resultado es 1, es verdadero