% (c)2021 Hien PHAN.
% Calculate A+B, A-B, A*B and A.*B
clc;
clear;

A = zeros(3:3);

A = diag([1 1 1], 0);

A(2,1) = 2;
A(3,1) = 3;
A(3,2) = 4;

A

B = A'

fprintf('\nA+B = \n');
disp(A+B);
fprintf('\nA-B = \n');
disp(A-B);
fprintf('\nA*B = \n');
disp(A*B);
fprintf('\nA.*B = \n');
disp(A.*B);