%EJERCICIO 1 
%sabemos que (x+y)+z=x+(y+z), por propiedad asociativa
%calcular de las dos formas, siendo x=516000, y=2460, z=60
%calcular usando mantisa decimal de 3 digitos con redondeo simetrico
%==========================================================
%a)
%forma de notacion cientifica normalizada decimal
%x=0.516*10^6
%y=0.246*10^4
%z=0.6*10^2

%(0.516*10^6+0.246*10^4)+0.6*10^2=
%(0.516*10^6+0.00246*10^6)+0.6*10^2=
%0.518*10^6+0.00006*10^6=
%= 0.518*10^6

%0.516*10^6+(0.246*10^4+0.6*10^2)=
%0.516*10^6+(0.246*10^4+0.006*10^4)=
%0.516*10^6+ 0.252*10^4=
%0.516*10^6+0.00252*^6=
%=0.519*10^6

%b)
%introducir en matlab
x=516000;
y=2460;
z=60;
res1=(x+y)+z;
res2=x+(y+z);
if res1==res2
    fprintf('se cumple la asociatividad, los resultados son iguales y valen: \n%12.9e\n', res1);
else
    fprintf('No se cumple la asociatividad, los resultados valen: \n%12.9e\n%12.9e\n', res1,res2);
end

%c)
%caso donde no se cumple la asociatividad
x1= pi;
y1= 1/3;
z1=1/3;
res1=(x1+y1)+z1;
res2=x1+(y1+z1);
if res1==res2
    fprintf('se cumple la asociatividad, los resultados son iguales y valen: \n%12.9e\n', res1);
else
    fprintf('No se cumple la asociatividad, los resultados valen: \n%12.9e\n%12.9e\n', res1,res2);
end

