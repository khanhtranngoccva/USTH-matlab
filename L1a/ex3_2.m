function [ solutions ] = ex3_2(a, b, c)
    discriminant = b ^ 2 - 4 * a * c;
    if discriminant > 0
        sq = sqrt(discriminant);
        solutions = [(-b + sq) / (2 * a), (-b - sq) / (2 * a)];
    elseif discriminant == 0
        solutions = [-b / (2 * a)];
    else
        solutions = [];
    end;
end

