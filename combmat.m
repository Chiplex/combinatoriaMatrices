function [mat contador] = combmat(min,max)
    cambio = 0;
    contador = 0;
    mat = [];
    creado = min;
    n = length(max);
    
    for m = 1:n
        for i = min(m):max(m)            
            if creado(m) == min(m)
                cambio = cambio+1
            else
                cambio = i 
            end            
            creado(m)= cambio
            mat = [mat; creado]
            contador=contador+1;            
        end        
    end
end
