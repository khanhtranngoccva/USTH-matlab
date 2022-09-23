% (c)2021 Hien PHAN.
% Reduce the size of A to 2x2
clc;
clear;

A = zeros(3:3);
A = diag([1 1 1], 0);

A(2,1) = 2;
A(3,1) = 3;
A(3,2) = 4;

A 
size(A)

%A(3,:) = []
%A(:, 3) = []

%A1 = A(1:2, 1:2)

B = A'

B1 = B(2:3, 2:3)