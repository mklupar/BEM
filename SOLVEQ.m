% DOUBLE CHECK
function X = SOLVEQ(A,UNB,N)
    % initialize output variables
    X = zeros(N,1);
    LSING = 0;
    
    % solve the system of equations
    X = A \ UNB;
    
    % check if the system is singular
    if rank(A) < N
        LSING = 1;
    end
    
    % print result to console
    if LSING == 0
        fprintf('\n%s\n\n','');
        fprintf('%s\n','The system has been solved regularly');
        fprintf('%s\n','');
    else
        fprintf('\n%s\n\n','');
        fprintf('%s\n','The system is singular');
        fprintf('%s\n','');
    end
    
end