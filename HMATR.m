% % Compute the element of H matrix
% function H = HMATR(XL, YL,N)
%     
%     H = zeros(N);
% 
%     XL(N+1) = XL(1);
%     YL(N+1) = YL(1);
% 
%     for i = 1:N
%         XM(i) = (XL(i)+XL(i+1))/2;
%         YM(i) = (YL(i)+YL(i+1))/2;
%     end
% 
%     for i = 1:N
%         for j = 1:N
%             if i~=j
%                 H(i,j) = DALPHA(XM(i),YM(i),XL(j),YL(j),XL(j+1),YL(j+1));
%             elseif i == j
%                 H(i,j) = -0.5;
%             end
%         end
%     end
% end

function [H] = HMATR(XL, YL, XM, YM, N)
% This function computes the elements of the H matrix
% Input:
%   XL: array of size (N+1)x1, x-coordinates of the vertices of the polygon
%   YL: array of size (N+1)x1, y-coordinates of the vertices of the polygon
%   XM: array of size Nx1, x-coordinates of the midpoints of the edges of the polygon
%   YM: array of size Nx1, y-coordinates of the midpoints of the edges of the polygon
%   N: integer, number of vertices of the polygon
% Output:
%   H: matrix of size NxN, off-diagonal elements of the H matrix

% Make the polygon closed
XL(N+1) = XL(1);
YL(N+1) = YL(1);

% Initialize the H matrix
H = zeros(N,N);

% Compute the elements of the H matrix
for i = 1:N
    for j = 1:N
        if i ~= j
            da = DALPHA(XM(i), YM(i), XL(j), YL(j), XL(j+1), YL(j+1));
            H(i,j) = da / (2*pi);
        elseif i == j
            H(i,j) = -0.5;
        end
    end
end

end

