function [f] = func2_for_builtin(d)


if d == 1
    f = @(a) abs(4.*a -2);

elseif d == 2

    f = @(b, a) abs(4.*a -2).* abs(4.*b-2);

elseif d == 3


    f = @(c,b,a) abs(4.*a-2).*abs(4.*b-2).*abs(4.*c-2);


end

end

