function [f] = func5_for_builtin(d)
a = 5;

if d == 1

f = @(x1) (abs(4.*x1-2)+2)/(1+a);

elseif d == 2

f = @(x2,x1) ((abs(4.*x1-2)+2)/(1+a)).*((abs(4.*x2-2)+2)/(1+a));

elseif d == 3

f = @(x3, x2, x1) ((abs(4.*x1-2)+2)/(1+a)).*((abs(4.*x2-2)+2)/(1+a)).*((abs(4.*x3-2)+2)/(1+a));


end


end