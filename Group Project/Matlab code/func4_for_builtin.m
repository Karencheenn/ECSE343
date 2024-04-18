function [f] = func4_for_builtin(d)

a = 5;
u = 0.5;

if d==1
f = @(x1) cos(2.*pi.*u + a.*x1);


elseif d == 2
f = @(x2, x1) cos(2*pi*u + a*x1 + a*x2);


elseif d == 3
f = @(x3, x2, x1) cos(2.*pi.*u + a.*x1 + a.*x2 +a.*x3);

end 

end