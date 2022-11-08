clc;
clear all;
close all;

x = linspace(0, 3, 7);

y = [70, 68, 55, 22, 13, 11, 10];

syms z;
p = poly2sym(polyfit(x, y, 5), z);

hold on;
[cX, cY] = fplot(p);
plot(cY, cX);
plot(y, x);
ylim([-5, 5]);
xlim([0, 90]);


second = diff(p, 2)

root = solve(second == 0, z);
double(root);

syms dF(z);
dF(z) = diff(p);

solution = -2 * dF(root);
double(solution)

