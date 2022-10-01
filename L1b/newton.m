function [root, fx, error, iter] = newton(f, startingPoint, es, maxIt)
    syms dF(x);
    dF(x) = diff(sym(f));
    disp(dF);
    if nargin < 3 || isempty(es)
        es=0.001;
    end
    if nargin < 4 || isempty(maxIt)
        maxIt=5;
    end
    root = startingPoint;
    iter = 0;
    while (true)
        iter = iter + 1;
        prevRoot = root;
        root = root - f(root) / dF(root);
        disp(double(root));
        error = abs((root - prevRoot) / root);
        if (error <= es || iter >= maxIt)
            break;
        end
    end
    fx = f(root);
end