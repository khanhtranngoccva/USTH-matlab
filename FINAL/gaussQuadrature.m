function [result] = gaussQuadrature(func, lower, upper, pointCount)
    if nargin < 4 || isempty(pointCount)
        pointCount = 2;
    end
    if pointCount == 1
        points = [
            0 2; 
        ];
    elseif pointCount == 2
        points = [
            sqrt(1/3), 1; 
            -sqrt(1/3), 1;
        ];
    elseif pointCount == 3
        points = [
            0, 8/9;
            sqrt(3/5), 5/9;
            -sqrt(3/5), 5/9;
        ];
    else
        throw(MException('MATLAB:InvalidArgError', 'Point count must be within 1 and 3.'));
    end
    offset1 = (upper - lower) / 2;
    offset2 = (upper + lower) / 2;
    subFunc = @(x) func(offset1 * x + offset2);
    result = 0;
    for i = 1 : pointCount
        result = result + subFunc(points(i, 1)) * points(i, 2);
    end
    result = result * offset1;
end