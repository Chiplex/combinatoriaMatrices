function [mat] = combmat6(min,max)
    temp = min;
    mat = [];
    n = length(max);
    while ~(n<1)    
        for i = min(n): max(n)
            temp(n) = i;
            mat = [mat; temp];
        end
        n = n-1;
    end
end