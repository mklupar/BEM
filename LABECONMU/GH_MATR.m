% Compute the elements of the G matrix
function [G,H,XM,YM] = GH_MATR(XL,YL,N,NB,NL)
    if NB >= 1
        xl_temp = [];
        yl_temp = [];
        XM= [];
        YM = [];
        % adds end values to each boundary to inusre the boundary is closed.
        for i = 1:NB
            xl = XL((NL(2*i-1)):(NL(2*i)));
            xl(end+1) = XL(NL(2*i-1));
    
            yl = YL((NL(2*i-1)):(NL(2*i)));
            yl(end+1) = YL(NL(2*i-1));
    
            for j = 1:length(xl)
                xl_temp(end+1) = xl(j);
                yl_temp(end+1) = yl(j);
            end
            % Finds the mid point
            
            for j = 1:length(xl)-1
                xm = (xl(j)+xl(j+1))/2;
                ym  = (yl(j)+yl(j+1))/2;
    
                XM(end+1) = xm;
                YM(end+1) = ym;
            end
       
        end
        XL = xl_temp;
        YL = yl_temp;
    end

    % Counters to ensure points between each boundary are not calculated
    index1 = 1;
    index2 = 2;
    index3 = 0;
    for k = 1:NB
        for i = 1:N
            X0 = XM(i);
            Y0 = YM(i);
            for j = NL(index1)+index3:NL(index2)+index3
                X1 = XL(j);
                Y1 = YL(j);
                X2 = XL(j+1);
                Y2 = YL(j+1);
                jj = j - index3; % To account for the boundary shift due to multiple boundaries
                if i ~= jj
                    G(i,jj) = RLINTC(X0,Y0,X1,Y1,X2,Y2);
                    H(i,jj) = DALPHA(X0,Y0,X1,Y1,X2,Y2);
                elseif i == jj
                    G(i,jj) = SLINTC(X1,Y1,X2,Y2);
                    H(i,jj) = -0.5;
                end
    
            end
        end
        index1 = index1+2;
        index2 = index2+2;
        index3 = index3+1;
    
    end
end
