function [y] = func7(x)
% cont_integrand_func
if( size(x,1)> size(x,2))
    error('The input x must be a row vector, e.g. x= [ x1 x2 ... xd], see the appendix of the project description.');
end 

% pause(1e-3);

d = length(x);

if (nargin == 1)
    u = repmat(0.5, 1, d);
    a = repmat(5, 1, d);
elseif (nargin == 2)
    a = repmat(5, 1, d);
end

sum = 0;
for ii = 1:d
   xi = x(ii);
   ai = a(ii);
   ui = u(ii);
   new = ai * abs(xi-ui);
   sum = sum + new;
end

y = exp(-sum);

end
