
clc;
clear all;

format long;

y = @(x) 5 * x ^ 3 - 5 * x ^ 2 + 6 * x - 2;


[root, fx, ea, iter] = bisect(y, 0, 2, 0, 4);
root;