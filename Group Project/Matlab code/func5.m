function [f] = func5(d)

a=5;
f = @(x) 1;
for i = 1:d
    temp = f;
    f = @(x) temp(x) .* ((abs(4*x(i)-2) + 2) / (1 + a));

end

end