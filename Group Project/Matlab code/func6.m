function [f] = func6(d)

a = 5;

f = @(x) (1+ a* sum(x))^-(d+1);


end