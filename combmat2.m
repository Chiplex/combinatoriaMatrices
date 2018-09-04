function [mat contador] = combmat2(min,max)
cambio = 0;
contador = 0;
mat = [];
creado = min;
n = length(max);
    while ~(n<1)    
        for i = min(n): max(n)
            creado(n) = i;
            mat = [mat; creado];
        end
        n = n-1;
    end
end