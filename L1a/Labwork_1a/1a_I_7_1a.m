% (c)2021 Hien PHAN.
clc;
clear;
clf;

y = @(x) x+1
fplot(y, [-5 5], 'r-+');

grid on