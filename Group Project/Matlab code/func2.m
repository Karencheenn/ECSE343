function [f] = func2(d)


f = @(x) 1;
for i = 1:d

temp = f;
f = @(x) temp(x)* abs(4.*x(i)-2);

end



end

