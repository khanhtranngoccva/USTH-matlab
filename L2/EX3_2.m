clc;
clear all;
close all;

f = @(x) x ^ 2 - 9;

z0 = 2;
z1 = fzero(f, z0, optimset('Display', 'iter', 'tolx', 10 ^ -3))
a0 = 0;
a1 = fzero(f, a0, optimset('Display', 'iter', 'tolx', 10 ^ -3))

figure;
hold on;
grid on;
fplot(f, '-g', 'LineWidth', 2);
plot(z0, f(z0), 'b+', 'LineWidth', 2);
plot(z1, f(z1), 'r+', 'LineWidth', 2);
plot(a0, f(a0), 'y+', 'LineWidth', 2);
plot(a1, f(a1), 'm+', 'LineWidth', 2);
hold off;

