function [f] = func3(d)

a = 5;
u = 0.5;



f = @(x) 1;
for i = 1:d
    temp = f;

    f = @(x) temp(x).* (a.^-2+(x(i)-u).^2).^-1;
    
end


end