function [years] = interest(rate, threshold)
    years = 0;
    current = 1;
    while current < threshold
        current = current * (1 + rate);
        years = years + 1;
    end;
end