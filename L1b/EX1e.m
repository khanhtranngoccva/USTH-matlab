clc;
clear all;
close all;

figure;
x = linspace(-4, 4);
y = power(x, 3) - x;
plot(x, y, '-g')

figure;
x = linspace(-pi, pi);
y = tan(x/2);
plot(x, y, '-g');
axis([-pi, pi, -10, 10]);

figure;
x = linspace(-1.5, 1.5);
y = exp(-x / 2);
z = power(x, 4) - power(x, 2);
plot(x, y, '-r', x, z, '-b');
legend('y', 'z');