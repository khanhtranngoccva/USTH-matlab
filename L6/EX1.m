clc;
clear all;
close all;

options=optimset('Display','Iter','TolFun',1e-8);

f = @(x) -x .^ 3 .* exp(-x);

hold on;

x = linspace(0, 5);
y = f(x);

plot(x, y, '-r', 'LineWidth', 2);

% 9 iterations
[x, fval, info, out] = fminbnd(f, 1, 4, options);

fval