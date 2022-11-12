clc;
clear all;
close all;

A = [
    7 2 -3;
    2 5 -3;
    1 -1 -6;
];

b = [
    -12;
    -20;
    -26;
];

jacobi(A, b, 1, 0.000000005, 1, true);
gaussSeidel(A, b, 1, 0.000000005, 1, true);

% % for i = 1 : 10
% %     disp(i)
% % end
% 
% x = zeros(3, 1)
% x(2) = 3
% y = repmat(x, 1)
% y(1) = 2
% x

cumtrapz