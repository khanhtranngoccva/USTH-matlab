clc;
clear all;
close all;



x = linspace(0.1, 1);
xData = linspace(0.1, 1, 10);
yData = [1.6781, 1.5711, 1.4771, 1.3945, 1.3220, 1.2584, 1.2025, 1.1535, 1.1104, 1.0725];

func = @(t) exp(-t * xData) + 0.8 - yData;

result = lsqnonlin(func, 1);
result

solFunc = @(x) exp(-result * x) + 0.8;

figure;
hold on;
plot(xData, yData, 'ko');
fplot(solFunc, 'r-')
xlim([0, 1]);
ylim([0, 2]);