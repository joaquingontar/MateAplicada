function cuad_mejor= cuad_mejor(a,b,c)
if sign(b) == 1
    x1 = (-2*c)./(b + sqrt(b.^2-4*a*c));
    x2 = (-b - sqrt(b.^2-4*a*c))./(2*a);
else
    x1 = (-b + sqrt(b.^2-4*a*c))./(2*a);
    x2 = (-2*c)./(b - sqrt(b.^2-4*a*c));
end
cuad_mejor(1) = x1;
cuad_mejor(2) = x2;
if[imag(x1)==0]
    if[x1~=x2]
        fprintf('son raices reales de valor %12.7f y %12.7f', x1, x2);
    elseif [x1==x2]
        fprintf('son raices reales de valor %12.7f', x1);
    end
elseif [imag(x1)~=0]
    fprintf('Son raices complejas conjugadas\n')
    fprintf('Raices: %s y %s\n', num2str(x1), num2str(x2));
end
end