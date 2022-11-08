f = @(x) 0.2 + 25 * x - 200 * x .^ 2 + 675 * x .^ 3 - 900 * x .^ 4 + 400 * x .^ 5;

syms fP(x);
fP(x) = diff(sym(f));

fP(2)

x = linspace(-10, 10);
y = f(x);

hold on;
plot(x, y, 'og');
fplot(f, '-r');

forward(f, x, 2)
backward(f, x, 2)
central(f, x, 2)

hold off;