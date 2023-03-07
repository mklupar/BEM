% %DOUBLE CHECK
% function [UB, UNB] = REORDER(UB, UNB, INDEX, N)
% 
% % This subroutine rearranges the arrays UB and UNB in such a way
% % that all values of the function u are stored in UB while all
% % the values of the normal derivative un are stored in UNB
% 
%     for I = 1:N
%         if INDEX(I)
%             continue
%         end
%         CH = UB(I);
%         UB(I) = UNB(I);
%         UNB(I) = CH;
%     end
% 
% end

function [UB, UNB] = REORDER(UB, UNB, INDEX)
% This function rearranges the arrays UB and UNB such that all values of
% the function u are stored in UB while all the values of the normal
% derivative un are stored in UNB.

% Get the number of elements in the arrays
N = numel(INDEX);

% Loop over all the elements in the arrays
for i = 1:N
    % If the index is nonzero, swap the values of UB and UNB
    if INDEX(i) ~= 0
        CH = UB(i);
        UB(i) = UNB(i);
        UNB(i) = CH;
    end
end

end





