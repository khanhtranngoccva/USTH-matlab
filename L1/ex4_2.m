function [y] = ex4_2(x)
    if 0 < x && x < 10
        y = 4 * x;
    elseif 10 < x && x < 40
        y = 10 * x;
    elseif x > 40 || x < 0
        y = x;
    end;
end

