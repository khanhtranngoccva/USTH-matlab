clc;
clear all;
close all;

f1 = @(x) x ^ 3 + x - 3;

format long;

root = newton(f1, 1, 10^-8, 20);
disp(root);

figure;
x = linspace(0.5, 1.5);
y = power(x, 10) - 1;
plot(x, y);

f2 = @(x) x ^ 10 - 1;
%[root2, fx2, er2] = newton(f2, 1.5, 0.01, 5);
%disp(fx2);


f3 = @(x) x ^ 2 + 2 * x - 3;
[root3] = newton(f3, -2);
[root4] = newton(f3, 2);
disp(double(root3));
disp(double(root4));
