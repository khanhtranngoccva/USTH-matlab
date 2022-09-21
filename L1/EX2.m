clc;
clear all;
close all;


A = [0 0 0; 0 0 0; 0 0 0];
A = zeros(3, 3);

A = diag([1, 1, 1], 0);
disp(A);

A(2, 1) = 2;
A(3, 1) = 3;
A(3, 2) = 4;

B = A';

disp(A + B);
disp(A - B);
disp(A * B);
disp(A .* B);

disp(A);
Ap = A(1:2,1:2);
disp(Ap);

disp(B);
Bp = B(2:3,2:3);
disp(Bp);

disp(A);
disp(A(1:6)); % flatten into a 1-row array and slice it.
disp(A(1:2, 1)); % from row 1-2, column 1.
disp(A(:, 1:2)); % all rows, column 1.
