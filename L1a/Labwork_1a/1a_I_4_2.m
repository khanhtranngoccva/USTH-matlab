% (c)2021 Hien PHAN.
% Write brief scripts to evaluate the following functions. 
% y=4x with 0<x <10
% y=10x with 10<x<40
% y = x with x > 40 and x < 0

clc;
clear;


x = 12
%x = -20
%x = 20


if (0<x && x<=10)
    y = 4*x
elseif (10<x && x<=40)
    y = 10*x
else
    y = x
endif