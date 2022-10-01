clc;
clear all;
close all;
format long;

f = @(x) x ^ 3 - 6 * x ^ 2 + 11 * x - 6.1;
[root, eval, error] = newton(f, 3.5, 0, 3);


disp(double(root));
disp(double(eval));
disp(double(error));