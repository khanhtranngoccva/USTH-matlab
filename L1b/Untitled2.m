clc;
clear all;
close all;

y = @(x) x ^ 10 - 1;
[root, fx, ea, iter] = newton(y, 0.5, 0, 10);
root;
