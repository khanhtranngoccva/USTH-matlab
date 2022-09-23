% (c)2021 Hien PHAN.
% For loop
clc;
clear;

function Fac = Factorial(n)
    Fac = 1;
    for i=1:n
        Fac *= i;
    end
end

n = 6
k = 3

Fac_n = Factorial(n)

Fac_k = Factorial(k)


% a. Combination
C_k_n = Factorial(n)/(Factorial(k)*Factorial(n-k))

% b. Permutation
A_k_n = Factorial(n)/(Factorial(n-k))
