% Rearrange G and H to produce the matrix A and B = UNB
function [A, UNB] = ABMATR(G,H,UB,INDEX,N)
A = zeros(N);
UNB = zeros(N,1);
% Reorder the columns of the system and store in A
    for j = 1:N
        if INDEX(j) == 0
            for i = 1:N
                A(i,j) = -G(i,j);
            end
        elseif INDEX(j) ~= 0
                for i = 1:N
                    A(i,j) = H(i,j);
                end
        end
    end
% Compute the right hand side vector and store in UNB
    for i = 1:N
        UNB(i) = 0;
        for j = 1:N
            if INDEX(j) == 0 
                UNB(i) = UNB(i) - H(i,j)*UB(j);
            elseif INDEX(j) ~= 0 
                UNB(i) = UNB(i) + G(i,j)*UB(j);
            end
        end
    end   
end