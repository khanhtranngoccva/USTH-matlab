clc;
close all;
clear all;

f = @(x) 67 * x + 32;
root = fzero(f, -1);

format long;
disp(root);
