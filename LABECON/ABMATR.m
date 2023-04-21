function [A, UNB] = ABMATR(G, H, UB, INDEX)
    % This function rearranges the matrices G and H and produces
    % the matrices A and B=UNB
    
    N = length(G);
    A = zeros(N, N);
    UNB = zeros(N, 1);
    
    % Reorder the columns of the system of equations and store them in A
    for j = 1:N
        if INDEX(j) == 0
            for i = 1:N
                A(i, j) = -G(i, j);
            end
        elseif INDEX(j) ~= 0
            for i = 1:N
                A(i, j) = H(i, j);
            end
        end
    end
    
    % Compute the right hand side vector and store it in UNB
    for i = 1:N
        for j = 1:N
            if INDEX(j) == 0
                UNB(i) = UNB(i) - H(i, j)*UB(j);
            else
                UNB(i) = UNB(i) + G(i, j)*UB(j);
            end
        end
    end

end
