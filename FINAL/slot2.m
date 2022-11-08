clc;
clear all;
close all;

syms x y;
f1 = @(x, y) x - y + 1;
f2 = @(x, y) x ^ 2 + y ^ 2 - 4;

[r, eval, error] = newtonDoubleVariable({f1, f2}, [2; 3], 0, 2000, true);
double(r)

error