
% (c)2021 Hien PHAN.
%Use the function symsum to calculate

clc;
clear;


syms k n; 

F = symsum (1/k - 1/(k+1), k, 1, n)

F = symsum (1/k - 1/(k+1), k, 1, 10)