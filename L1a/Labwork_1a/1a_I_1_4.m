% (c)2021 Hien PHAN.
%Define the symbolic function x + y using the function syms. Find the value of f at x = 1 and y = 2
clc;
clear;

syms f(x,y)
f(x,y) = x+y

x = 1
y = 2
f(x,y)