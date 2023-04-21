

function OUTPUT(XM, YM, UB, UNB, XIN, YIN, UIN, N, IN)
    boundary_val = [XM' YM' UB' UNB ]';
    internal_val = [XIN' YIN' UIN]';
    fid = fopen('output.txt', 'w');
    fprintf(fid,string(N)+ ' elements were used with ' + string(IN) + ' internal points.\n');
    % write baoundary values to file
    fprintf(fid,'%9s %12s %12s %12s\n','XM','YM', 'UB', 'UNB');
    fprintf(fid,'%12.4f %12.4f %12.4f %12.4f\n',boundary_val);
    % write internal values to file
    fprintf(fid,'%9s %12s %12s\n','XIN','YIN', 'UIN');
    fprintf(fid,'%12.4f %12.4f %12.4f\n',internal_val);
    fclose(fid);

end