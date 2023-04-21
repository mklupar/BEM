% Compute the elements of the G matrix
function [G, XM, YM] =  GMATR(XL, YL, N)
    
    % Compute Nodal Coordinates
    XL(N+1) = XL(1);
    YL(N+1) = YL(1);

    % Find the boundary node p_i
    for i = 1:N
        XM(i) = (XL(i) + XL(i+1))/2;
        YM(i) = (YL(i) + YL(i+1))/2;
    end

    % Compute the elements of G matrix
    for i = 1:N
        for j = 1:N
            JP1 = j+1;
            if i ~= j
                G(i,j) = RLINTC(XM(i),YM(i),XL(j),YL(j),XL(JP1),YL(JP1));
            elseif i == j
                G(i,j) = SLINTC(XL(j),YL(j),XL(JP1),YL(JP1));
            end
        end
    end
end
