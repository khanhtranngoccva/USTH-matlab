clc;
clear all;
close all;

A = [
    2, 1, -1;
    -3, -1, 2;
    -2, 1, 2;
];

b = [
    8;
    -11;
    -3;
];

[L, U] = lu([A, b]);

U