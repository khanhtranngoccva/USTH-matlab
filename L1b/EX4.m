clc;
clear all;
close all;

format long;
opts = optimset('Display', 'iter');

fun = @f1;
x0 = [0, 0];
[sol, fx] = fsolve(fun, x0, opts);
disp(sol);

c = [1,2;3,4];
disp(diag(c));