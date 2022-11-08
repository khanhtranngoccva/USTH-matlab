% Input: 
%   funcs: A cell array 2 single-variable functions with x and y as
%   parameter name. Functions must be wrapped around curly brackets.
%   startingPoint: The x0 coordinates to start from. Must be a column
%   vector.
%   tolerance: The error tolerance. Function stops if relative error is lower.
%   maxIterations: Maximum iteration count before the function stops.
%   verbose: Allows to print the process of applying the Newton-Raphson
%   method.
% Output:
%   root: The approximate 2-coordinate root.
%   eval: Evaluation of function after last iteration.
%   error: The relative error after last evaluation.
%   iterations: The numbers of iterations executed.
function [result, eval, relativeError, iterations] = newtonDoubleVariable(funcs, startingPoint, tolerance, maxIterations, verbose)
    if nargin < 3 || isempty(tolerance)
        tolerance = 0.001;
    end
    if nargin < 4 || isempty(maxIterations)
        maxIterations = 10;
    end
    if nargin < 5 || isempty(verbose)
        verbose = false;
    end
    syms x y jacobianFunc(x, y) evalFunc(x, y);
    symF1 = sym(funcs(1));
    symF2 = sym(funcs(2));
    evalFunc(x, y) = [symF1; symF2];
    jacobianFunc(x, y) = jacobian([symF1; symF2], [x; y]);
    iterations = 0;
    result = startingPoint;
    while (true)
        iterations = iterations + 1;
        prevResult = result;
        result = result - jacobianFunc(result(1), result(2)) \ evalFunc(result(1), result(2));
%         Disable fractional computation for significantly better
%         performance.
        result = double(result);
        relativeError = max(abs(result - prevResult) ./ result);
        if verbose
            fprintf('--------------\n');
            fprintf('Iteration %d:\n', iterations);
            disp(result);
            fprintf('Evaluation: \n');
            disp(double(evalFunc(result(1), result(2))));
            fprintf('Relative error: %f\n', relativeError);
        end
        if (iterations >= maxIterations || relativeError <= tolerance)
            break;
        end
    end
    eval = evalFunc(result(1), result(2));
end