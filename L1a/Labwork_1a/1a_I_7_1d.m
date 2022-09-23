% (c)2021 Hien PHAN.
clc;
clear;
clf;
    
hold on

fplot(@(x) x+1, [-5 5], 'b-');
fplot(@(x) -x+2, [-5 5], 'r--');

title('Line Plot of y = x+1 and y = -x+2');
xlabel('x');
ylabel('y');
legend({'y = x+1','y = -x+2'},'Location','northeast');
grid on

hold off