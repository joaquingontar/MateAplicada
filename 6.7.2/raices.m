function [v] = raices (a, b, c)
x1=-2*c/(b+sqrt(b^2-4*a*c));
x2=-2*c/(b-sqrt(b^2-4*a*c));
v=[x1 x2];
fprintf('las raices son %12.4f %12.4f', x1, x2);
end