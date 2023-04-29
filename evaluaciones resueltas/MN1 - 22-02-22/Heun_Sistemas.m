function [t,x,y] = Heun_Sistemas(f,g,a,b,x0,y0,n)
%Debo encontrar la forma de agregar una funcion mas al metodo, para
%encontrar su aproximacion
fprintf(' METODO DE HEUN\n')
fprintf(' k         t_k            y_k \n')

h = (b-a)/n; %defino el h( que es el paso), es decir el paso(long de intervalo/n)
t = a:h:b; %discretizacion
y(1) = y0; 
x(1)=x0;

fprintf('%3.0f  %10.6f  %10.6f \n',0, t(1),y(1))

for k=1:n
    p(k+1) = x(k) + h*f(t(k),x(k),y(k));
    x(k+1) = x(k) + (h/2)*(f(t(k),x(k),y(k))+ f(t(k+1),p(k+1),y(k)));
    q(k+1) = y(k) + h*g(t(k),x(k),y(k));
    y(k+1) = y(k) + (h/2)*(g(t(k),x(k),y(k))+ g(t(k+1),x(k),q(k+1)));
    fprintf('%3.0f  %10.6f  %10.6f \n',k, t(k+1),(k+1));
    fprintf('%3.0f  %10.6f  %10.6f \n',k, t(k+1),x(k+1));

end

fprintf('Tamaño del paso: %12.6f \n',h);
fprintf('Numero de pasos: %3.0f \n',n);
%no necesito criterio de salida porque se repite n veces
end