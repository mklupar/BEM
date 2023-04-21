    
function [XL,YL,XIN,YIN,INDEX,UB,N,NB,NL,IN] = INPUT()
    
    name = 'Marcus Klupar';
    problem = 'Potential Problem solved by LaPlace Eq (Multiple Boundary)';
    fid = fopen('output.txt', 'w');
    fprintf(fid,'Name: %s\n%s\n\n',name,problem);
    fclose(fid);

    XL = [0 .25 .5 .75 1 1 1 1 1 .75 .5 .25 0 0 0 0 .3 .3 .3 .5 .7 .7 .7 .5];
    YL = [0 0 0 0 0 .25 .5 .75 1 1 1 1 1 .75 .5 .25 .3 .5 .7 .7 .7 .5 .3 .3];
    XIN = [.15 .5 .85 .15 .85 .15 .5 .85];
    YIN = [.15 .15 .15 .5 .5 .85 .85 .85];
    INDEX = [1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1];
    UB = [0 0 0 0 200 200 200 200 0 0 0 0 100 100 100 100 130 130 0 0 -100 -100 0 0];
    N = length(XL);
    IN = length(XIN);
    NB = 2;
    NL = [1,16,17,24]; % start and end index of each boundary 
end