syms k, n;

r1 = symsum(1 / k - 1 / (1 + k), k, 1, 10);
r1

r2 = symsum(1 / k - 1 / (1 + k), k, 1, n);
r2

syms n;
r3 = symsum(1 / n ^ 2, n, 1, Inf);
r3