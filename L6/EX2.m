clc;
clear all;
close all;

f = @(xy) xy(1) * xy(2) * exp(-(xy(1) ^ 2 + xy(2) ^ 2));

options=optimset('Display','Iter','TolFun',1e-8);

fminsearch(f, [0; 0], options),

[xGrid, yGrid] = meshgrid(linspace(-2, 2), linspace(-2, 2));
grid on;

[m, c] = contour(xGrid, yGrid, xGrid .* yGrid .* exp(-(xGrid .^ 2 + yGrid .^ 2)), 200);
c.LineWidth = 10;