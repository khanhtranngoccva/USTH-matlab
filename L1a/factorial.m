function [ result ] = factorial( toNum )
    result = 1;
    for i = 1:toNum
        result = result * i;
    end
end