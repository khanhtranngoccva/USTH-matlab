clc;
clear all;
close all;

syms x;
solution = solve(exp(x) == 8 * x - 4, x);
solution