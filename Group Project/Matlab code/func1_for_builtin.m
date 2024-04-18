function [f] = func1_for_builtin(d)

if d == 1

f = @(a) (2*pi).^(-1/2)* exp(0.5*(-a.^2));

elseif d == 2

f = @(b,a) (2*pi).^(-1)*exp(0.5*(-a.^2-b.^2));


elseif d == 3

f = @(c,b,a) (2*pi).^(-3/2)*exp(0.5*(-a.^2-b.^2-c.^2));


end

end