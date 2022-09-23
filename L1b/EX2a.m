f1 = @(x) x ^ 2 - 2;

format long;

root = bisect(f1, 1, 2, 0.05);
disp(root);

syms f2(x);
f2(x) = log(x ^ 2) - 0.7;

root2 = bisect(f2, 0.5, 2, 0.001, 3);
disp(root2);

syms f3(x);
f3(x) = x ^ 2 + 2 * x - 3;

root3 = bisect(f3, -5, 0, 0.001, 100);
disp(root3);

root4 = bisect(f3, 0, 5, 0.001, 100);
disp(root4);