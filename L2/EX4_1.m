clc;
clear all;
close all;

f1 = 'x1 ^ 2 + x1 * x2 - 10';
f2 = 'x2 + 3 * x1 * x2 ^ 2 - 57';

hold on;
grid on;
ezplot(f1);
ezplot(f2);
xlabel('x');
ylabel('y');
legend({f1, f2}, 'Location', 'ne');
grid off;