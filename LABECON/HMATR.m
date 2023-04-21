% Compute the element of H matrix
function H = HMATR(XL, YL,N)
    
    H = zeros(N);

    XL(N+1) = XL(1);
    YL(N+1) = YL(1);
    % Find the point p_i
    for i = 1:N
        XM(i) = (XL(i)+XL(i+1))/2;
        YM(i) = (YL(i)+YL(i+1))/2;
    end

    for i = 1:N
        for j = 1:N
            if i~=j
                H(i,j) = DALPHA(XM(i),YM(i),XL(j),YL(j),XL(j+1),YL(j+1));
            elseif i == j
                H(i,j) = -0.5;  
            end
        end
    end
end

