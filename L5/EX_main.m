clc;
clear all;
close all;

minimizer = [-45, -20];
A = [
    0.04, 0.12;
    20, 5;
    1, 1;
];
b = [
    40;
    9500;
    550;
];
[result, fval] = linprog(minimizer, A, b, [], [], [0, 0]);

syms y f(x) g(x) h(x);
f(x) = solve(0.04 * x + 0.12 * y == 40, y);
g(x) = solve(20 * x + 5 * y == 9500, y);
h(x) = solve(x + y == 550, y);

x = linspace(0, 4000, 300);
yF = f(x);
yG = g(x);
yH = h(x);


hold on;
[xGrid, yGrid] = meshgrid(linspace(0, 600), linspace(0, 400));
[m, c] = contour(xGrid, yGrid, 45 * xGrid + 20 * yGrid, 100);
c.LineWidth = 5;

plot(x, yF, 'LineWidth', 2);
plot(x, yG, 'LineWidth', 2);
plot(x, yH, 'LineWidth', 2);
plot(result(1), result(2), 'or', 'MarkerFaceColor', 'red');
ylim([0, 400]);
xlim([0, 600]);
