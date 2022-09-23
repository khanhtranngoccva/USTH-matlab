clc;
clear all;
close all;

x = linspace(-5, 5);
y = x + 1;
z = -x + 2;


figure;
plot(x, y, 'g', x, z, '-.b', 'LineWidth', 3);
title('x + 1 and x - 2');
xlabel('x');
ylabel('x + 1 and x - 2');