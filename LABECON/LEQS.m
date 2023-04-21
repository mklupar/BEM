%%%% Code is not needed!!!
% just need to remove from git


% solves linear system of equations
function [X, LSING] = LEQS(A, B)
    % Check Singularity
    
    if rank(A)< size(A,2)
        LSING = 1;
    else
        LSING = 0;
    end
    % Solve for X
    X = linsolve(A,B);
end