% Solve a system of linear equations Ax = b using the Gauss-Seidel method.
% Input: 
%   matrix: A square matrix containing the . (representing A)
%   constants: A column matrix. (representing b)
%   es: The error tolerance. Function stops if relative error is lower.
%   maxIterations: Maximum iteration count before the function stops.
%   relaxation: This parameter may increase convergence. Set it from 1 to
%   2, 1 by default.
%   verbose: Allows verbose logging of the process.
% Output:
%   result: Approximate result for the system of equations.
%   error: Relative error of the final iteration.
%   iter: The numbers of iterations executed.
function [result, error, iter] = gaussSeidel(matrix, constants, tolerance, maxIterations, relaxParam, verbose)
    if nargin < 4 || isempty(maxIterations)
        maxIterations = 5;
    end
    if nargin < 3 || isempty(tolerance)
        tolerance = 0.05;
    end
    if tolerance < 0
        throw(MException('MATLAB:ToleranceError', 'Toleration parameter must be non-negative.'));
    end
    if nargin < 5 || isempty(relaxParam)
        relaxParam = 1;
    end
    if relaxParam < 0 || relaxParam > 2
        throw(MException('MATLAB:RelaxationError', 'Relaxation parameter must be between 0 and 2.'));
    end
    if nargin < 6 || isempty(verbose)
        verbose = false;
    end
    [matrixDimX, matrixDimY] = size(matrix);
    constantSize = length(constants);
    if (matrixDimX ~= matrixDimY || matrixDimX ~= constantSize)
        throw(MException('MATLAB:DimensionError', 'The matrix must be square and the column constants must have equal parameters.'));
    end
    result = zeros(constantSize, 1);
    for iter = 1 : maxIterations
        prevResult = result;
        result = repmat(prevResult, 1);
        for i = 1 : constantSize
            exclSum = 0;
            for j = 1 : constantSize
                if j ~= i
                    exclSum = exclSum + matrix(i, j) * result(j);
                end
            result(i) = (constants(i) - exclSum) / matrix(i, i);
%             Enhancement with relaxation.
            result(i) = relaxParam * result(i) + (1 - relaxParam) * prevResult(i);
            end
        end
        error = max(abs((result - prevResult) ./ result));
        if (verbose)
            fprintf('-------------\n');
            fprintf('Iteration %d:\n', iter);
            disp(result);
            fprintf('Error: %f\n', error);
            fprintf('\n');
        end
        if error <= tolerance
            break;
        end
    end
end