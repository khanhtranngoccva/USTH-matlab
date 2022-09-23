n = 5;
i = 1;
while i <= n
    disp(i);
    i = i + 1;
end;


i = 1;
while i <= n
    if mod(i, 2) ~= 0
        disp(i);
    end
    i = i + 1;
end;

s = 0;
i = 1;
f = @(x) sqrt(2) * x - 1;
while s <= 20
    s = s + f(i);
    i = i + 1;
end;
disp(s);

disp(interest(0.1, 2));
