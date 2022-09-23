% (c)2021 Hien PHAN.
% While loop
clc;
clear;

n = 0;
while n<10
    n += 1;
    if mod(n,2)!=0 % Remainder after division (modulo operation)
        disp(n);
    end
end