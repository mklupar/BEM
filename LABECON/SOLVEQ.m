
function X = SOLVEQ(A,UNB,N)
    % initialize output variables
    % check if the system is singular

    LSING = 0;
    if rank(A) < N
        LSING = 1;
    end

    % solve the system of equations
    X = A \ UNB;
  
    
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