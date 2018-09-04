function [nroPosiblesCombinaciones]  = combvector(min,max)
nroPosiblesCombinaciones=1;
lengthMax = length(max);
    for k = 1:lengthMax
    nroPosiblesCombinaciones = nroPosiblesCombinaciones*(abs(max(k)-min(k))+1);
    end
end