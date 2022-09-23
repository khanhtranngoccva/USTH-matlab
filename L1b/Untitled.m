clc;
clear all;
close all;

f1 = @(x) x ^ 3 + x + 3;
syms dF1(x);
dF1(x) = diff(sym(f1));

dF1(0);