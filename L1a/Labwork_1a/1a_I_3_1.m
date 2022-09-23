% (c)2021 Hien PHAN.
% Write a function that calculates the mean of a vector.
clc;
clear;
    
x = [1:3:100]
mean = stat(x)


function [mean] = stat(x)
    Number_of_Elements = length(x)
    mean = sum(x)/Number_of_Elements;
end