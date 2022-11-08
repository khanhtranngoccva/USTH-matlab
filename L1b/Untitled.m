
clc;
clear all;

format long;

y = @(x) x ^ 3 - 2 * x - 5;


[root, fx, ea, iter] = bisect(y, 1.5, 3, 0, 5);
root;