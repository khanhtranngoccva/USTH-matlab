clc;
clear all;
close all;

s1 = 0;
for i = 1:1000
    s1 = s1 + i ^ 2;
end;
disp(s1);

s2 = factorial(20);
disp(s2);

s3 = 0;
t3 = true;
for i = 1:2:5000
    if t3
       s3 = s3 + 1 / i;
       t3 = false;
    else
       s3 = s3 - 1 / i;
       t3 = true;
    end
end
disp(s3 * 4);


s4 = 0;
p4 = (pi ^ 2 - 8) / 16;
for i = 1:2:5000
    s4 = s4 + 1 / (i ^ 2 * (i + 2) ^ 2);
end
disp(s4 - p4);


combination = @(n, k) factorial(n) / factorial(k) / factorial(n - k);
disp(combination(10, 2));


permutation = @(n, k) factorial(n) / factorial(n - k);
disp(permutation(10, 2));