clc;
clear all;
close all;

% y = @(x) 0.2 + 25 * x - 200 * x ^ 2 + 675 * x ^ 3 - 900 * x ^ 4 + 400 * x ^ 5;

options = optimset('Display', 'iter', 'TolFun', 1e-8);

format long;
r = fsolve(@(x) x ^ 2, 0.2, options);


x = linspace(0, 5, 21);
yFunc = @(x) x .^2 + 2 * x + 1;
y = yFunc(x);

plot(x, y, '-s', 'LineWidth', 2, 'Color', 'red', 'MarkerFaceColor', 'red')


result = fminsearch(@(x) x ^ 2 + 1, 2.5, options);
result