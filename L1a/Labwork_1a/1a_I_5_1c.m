% (c)2021 Hien PHAN.
% For loop
clc;
clear;

c = 0;
k = 1;
for i=1:2:1003
    k += 1;
    c += (-1)^k/(i);
end


c