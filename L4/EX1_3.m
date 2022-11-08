clc;
clear all;
close all;

weights = [40 63 62 68 64 45 50 66 67];
JHI = [1450 3817 3708 4300 3950 1896 2339 4200 4312];


t1 = @(a, x) a(1) * x + a(2);
p0 = [40, 1450];
result = lsqcurvefit(t1, p0, weights, JHI);

xAxis = linspace(40, 70);


figure;
hold on;
grid on;
plot(weights, JHI, 'ko', 'MarkerFaceColor', 'green');
plot(xAxis, t1(result, xAxis), '-r'); 

legend('Raw data', 'Prediction', 'Van Lam');