% (c)2021 Hien PHAN.
% WhatÃ¢â‚¬â„¢s the difference A(1:3) and A(1:3,1) or A(:,1)?
clc;
clear;

A = zeros(3:3);
A = diag([1 1 1], 0);

A(2,1) = 2;
A(3,1) = 3;
A(3,2) = 4;
A

A1 = A(1:9)
A2 = A(1:3,1)
A3 = A(:, 1)