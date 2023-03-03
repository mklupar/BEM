%DOUBLE CHECK
function [UB, UNB] = REORDER(UB, UNB, INDEX, N)

% This subroutine rearranges the arrays UB and UNB in such a way
% that all values of the function u are stored in UB while all
% the values of the normal derivative un are stored in UNB

    for I = 1:N
        if INDEX(I)
            continue
        end
        CH = UB(I);
        UB(I) = UNB(I);
        UNB(I) = CH;
    end

end