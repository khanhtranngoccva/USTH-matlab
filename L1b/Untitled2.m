clc;
clear all;
close all;

y = @(x) x ^ 3 - x - 5;
[root, fx, ea, iter] = newton(y, 1, 0, 5);
root;
