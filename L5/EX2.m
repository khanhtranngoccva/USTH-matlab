clc;
clear all;
close all;

c = [400, -900, 675, -200, 25, 0.2];

x = linspace(0, 0.8);
y = polyval(c, x);

sol = trapz(x, y);
sol

% trapz, but progress written in verbose
sol2 = cumtrapz(x, y);
sol2

func = matlabFunction(poly2sym(c));
sol3 = integral(func, 0, 0.8);
sol3

sol4 = quadadapt(func, 0, 0.8, 0.1);
sol4