% Input: 
%   f: Anonymous single-variable function with x as parameter name.
%   startingPoint: The x0 coordinates to start from.
%   es: The error tolerance. Function stops if relative error is lower.
%   maxIt: Maximum iteration count before the function stops.
% Output:
%   root: The approximate root.
%   fx: Evaluation of function after last iteration.
%   error: Evaluation of function after last iteration.
%   iter: The numbers of iterations executed.
function [root, fx, error, iter] = newtonSingleVariable(f, startingPoint, es, maxIt)
    syms dF(x);
    dF(x) = diff(sym(f));
    % disp(dF);
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
        root = double(root);
        error = abs((root - prevRoot) / root);
        if (error <= es || iter >= maxIt)
            break;
        end
    end
    fx = f(root);
end