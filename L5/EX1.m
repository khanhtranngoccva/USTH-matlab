clc;
clear all;
close all;

maximizeThis = [-150, -175];
A = [
    7, 11;
    10, 8;
    1, 0;
    0, 1;
];

b = [
    77;
    80;
    9;
    6;
];

[result, fval] = linprog(maximizeThis, A, b, [], [], [0; 0], [10; 10]);

[u, v] = meshgrid(linspace(0, 9), linspace(0, 9));

hold on;
syms x y;
xlim([0, 10]);
fplot(@(x) (7 * x - 77) / -11, '-g', 'LineWidth', 2);
fplot(@(x) (10 * x - 80) / -8, '-y', 'LineWidth', 2);
plot([9, 9], [0, 12], '-m', 'LineWidth', 2);
fplot(@(x) 6, '-r', 'LineWidth', 2)
fplot(@(x) (150 * x + fval) / -175, '-r', 'LineWidth', 2);
contour(u, v, 150 * u + 175 * v, 30);
plot(result(1), result(2), '-or', 'MarkerSize', 4, 'MarkerFaceColor', 'red');

hold off;