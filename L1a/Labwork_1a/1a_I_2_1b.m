% (c)2021 Hien PHAN.
% Change the diagonal of A to 1 without define the matrix again
%help diag
clc;
clear;

A = zeros(3:3)

A(1,1) = 1;
A(2,2) = 1;
A(3,3) = 1
%A = diag([1 1 1], 0)