clc;
clear all;
close all;

rowVector = [1, 2, 3, 4, 5];
e1 = rowVector(3) + rowVector(2);
disp(e1);
disp(rowVector);

colVector = [
    1;
    2;
    3;
    4;
    5;
];

tCol = colVector';

disp(tCol);

s = sum([1:3:100]);
disp(s);

syms f(x, y);
f(x, y) = x + y;

a = 1;
b = 2;
f(1, 2);