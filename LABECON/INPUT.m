    
function [XL,YL,XIN,YIN,INDEX,UB,N,IN] = INPUT()
    
    name = 'Marcus Klupar';
    problem = 'Potential Problem solved by LaPlace Eq';
    fid = fopen('output.txt', 'w');
    fprintf(fid,'Name: %s\n%s\n\n',name,problem);
    fclose(fid);

    XL = [0 .25 .5 .75 1 1 1 1 1 .75 .5 .25 0 0 0 0];
    YL = [0 0 0 0 0 .25 .5 .75 1 1 1 1 1 .75 .5 .25];
    XIN = [.25 .5 .75 .25 .5 .75 .25 .5 .75];
    YIN = [.25 .25 .25 .5 .5 .5 .75 .75 .75];
    INDEX = [1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0];
    UB = [0 0 0 0 200 200 200 200 0 0 0 0 100 100 100 100];
    N = length(XL);
    IN = length(XIN);
end