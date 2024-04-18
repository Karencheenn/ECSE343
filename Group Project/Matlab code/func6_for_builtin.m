function [f] = func6_for_builtin(d)

a = 5;

if d == 1

f = @(x1) (1+a*x1).^(-2);

elseif d == 2


f = @(x2, x1) (1+a*x1+a*x2).^(-3);

elseif d == 3


f = @(x3, x2, x1) (1+a*x1+a*x2+a*x3).^(-4);

end 

end