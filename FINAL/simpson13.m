% Simpson 1/3 algorithm. The first argument is the function, and the second
% is an evenly spaced array created with linspace.
function [result] = simpson13(func, linearSpace)
    spaceSize = length(linearSpace);
    firstElement = linearSpace(1, 1);
    lastElement = linearSpace(1, spaceSize);
    firstComputation = func(firstElement);
    lastComputation = func(lastElement);
    difference = lastElement - firstElement;
    result = 0;
    for i = 2 : spaceSize - 1
        if mod(i, 2) ~= 0
            result = result + 2 * func(linearSpace(1, i));
        else
            result = result + 4 * func(linearSpace(1, i));
        end
        result = double(result);
    end
    result = result + firstComputation + lastComputation;
    result = result * difference / (3 * (spaceSize - 1));
end