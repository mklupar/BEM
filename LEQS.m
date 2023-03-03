% DOUBLE CHECK
function [X, LSING] = LEQS(A, B, N)
% This function uses Gauss elimination to solve a system of linear equations
% of the form [A]{x}={B}, where
% A: One-dimensional array which contains the occasional row of
% the two-dimensional array of the coefficients of the unknowns
% b: One-dimensional array which contains the known coefficients
% n: Integer denoting the number of the unknowns
% lsing: Integer taking the values:
% lsing = 0, if the system has been solved regularly
% lsing = i, if the system is singular

LSING = 0;
for j = 1:N
    jj = N+j;
    imax = j;
    amax = abs(A(N*(j-1)+j));
    for i = j+1:N
        ij = N*(j-1)+i;
        if abs(A(ij)) > amax
            amax = abs(A(ij));
            imax = i;
        end
    end
    if amax == 0
        LSING = 1;
        return;
    end
    if imax ~= j
        for k = j:N
            i1 = N*(k-1)+imax;
            i2 = N*(k-1)+j;
            atemp = A(i1);
            A(i1) = A(i2);
            A(i2) = atemp;
        end
        btemp = B(imax);
        B(imax) = B(j);
        B(j) = btemp;
    end
    A(N*(j-1)+j) = A(N*(j-1)+j)/amax;
    B(j) = B(j)/amax;
    if j ~= N
        for ix = j+1:N
            ixj = N*(j-1)+ix;
            for jx = j+1:N
                ijref = N*(jx-1)+ix;
                jjx = N*(jx-1)+j;
                A(ijref) = A(ijref) - A(ixj)*A(jjx);
            end
            B(ix) = B(ix) - B(j)*A(ixj);
        end
    end
end
X(N) = B(N);
for i = N-1:-1:1
    sum = B(i);
    for j = i+1:N
        sum = sum - A(N*(i-1)+j)*X(j);
    end
    X(i) = sum;
end
end


