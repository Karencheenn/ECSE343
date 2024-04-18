function [f] = func4(d)

a = 5;
u = 0.5;



f = @(x) cos(2*pi*u+ a* sum(x));




end