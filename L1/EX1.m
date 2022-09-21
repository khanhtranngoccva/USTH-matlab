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

disp(syms(2, 5));

n = 200;
k = null ;
disp(symsum(1/k - 1/(1 + k), k, 1, n));
symsum