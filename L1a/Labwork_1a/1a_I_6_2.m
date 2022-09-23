% (c)2021 Hien PHAN.
% While loop
clc;
clear;

S = 0;
i = 0;
while S < 20
    i += 1
    a = sqrt(2*i - 1)
    S += a
    fprintf("\n")
end