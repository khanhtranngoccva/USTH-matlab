% (c)2021 Hien PHAN.
% For loop
clc;
clear;

d1 = (pi^2 - 8)/16

d2 = 0;
for i=1:2:1005
    d2 += i^(-2)*(i+2)^(-2);
end

d2