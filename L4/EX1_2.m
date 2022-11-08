clc;
clear all;

weights = [40 63 62 68 64 45 50 66 67];
JHI = [1450 3817 3708 4300 3950 1896 2339 4200 4312];


r1 = polyfit(weights, JHI, 1);
f1 = @(x) r1(1) * x + r1(2); 

figure;
hold on;
plot(weights, JHI, 's', 'MarkerFaceColor', 'red');
fplot(f1, '-r');
disp(f1(72));
plot(72, f1(72), 's', 'MarkerFaceColor', 'blue');
xlim([40, 80]);
ylim([1000, 5000]);
legend('Raw data', 'Prediction', 'Van Lam');