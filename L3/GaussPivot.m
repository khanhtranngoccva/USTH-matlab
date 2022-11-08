function x = GaussPivot(A,b)
    % GaussPivot: Gauss elimination pivoting
    % x = GaussPivot(A,b): Gauss elimination with pivoting.
    % input:
    % A = coefficient matrix
    % b = right hand side vector
    % output:
    % x = solution vector
    [m,n]=size(A);
    if m~=n, error('Matrix A must be square'); end
    nb=n+1;
    Aug=[A b];
    % forward elimination
    for k = 1 : n-1
        % The index of the row with largest absolute leading value is
        % selected for each column. Note that it is sliced from row k.
        [big,i]=max(abs(Aug(k:n,k)));

        % The relative index of the max row + (k - 1) which is the numbers of rows being cut.
        % This is the absolute row index.
        ipr = i + k - 1;
        disp(ipr);
        disp(Aug);
        % Swap the rows.
        if ipr ~= k
            Aug([k,ipr],:)=Aug([ipr,k],:);
        end
        % Use the 3rd primary row operation.
        for i = k+1:n
            % Multiply so that at row i is equal to at row k.
            % Now do the row subtractions.
            factor=Aug(i,k)/Aug(k,k);
            Aug(i,k:nb)=Aug(i,k:nb)-factor*Aug(k,k:nb);
        end
    end
    % back substitution
    % Create a column matrix
    x=zeros(n,1);
    % The bottom variable.
    x(n)=Aug(n,nb)/Aug(n,n);
    for i = n-1:-1:1
        % Set this all the way to the first row.
        x(i)=(Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
    end
end