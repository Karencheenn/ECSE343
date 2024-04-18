function [f] = func1(d)

f = @(x) 1;

for i=1:d
    temp = f;
    f = @(x) temp(x) .* (2*pi)^(-1/2) .* exp(0.5 * -x(i)^2);
end
end