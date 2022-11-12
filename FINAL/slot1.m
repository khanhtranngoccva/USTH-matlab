y = @(x) exp(x);

[root, fx] = newtonSingleVariable(y, 1.6, 0, 50);
disp(root);

polyval