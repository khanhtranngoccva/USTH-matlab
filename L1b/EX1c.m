clc;
clear all;
close all;

syms p q x;
solution = solve(x ^ 3 + p * x + q == 0, x);
solution