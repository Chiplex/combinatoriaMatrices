function [nroCombinaciones, nroElementos, nroConjuntos]  = PropiedadesCM(Matriz)
    min = Matriz(1,:);
    max = Matriz(end,:);
    for i = 1:length(Matriz)
        if(min(i)>max(i))
            disp('Los valores de los indices no son los correctos: un valor del indice de la primer fila supera al segundo');            
        end
    end
    
    % Se obtiene la dimension del arreglo
    [fila columna] = size(max);
    % Se obtiene el numero de combinaciones que tendra la matriz al final
    nroCombinaciones = 1;
    for j = 1:columna
        nroCombinaciones = nroCombinaciones*(abs(max(j)-min(j))+1);        
    end   
    
    % Se obtiene el numero de combinaciones, elementos y conjuntos
    nroCombinacionesIndependientes = 1;
    for k = 1:columna
        indMin = min(k);
        indMax = max(k);
        % Se obtiene el numero de combinaciones para cada valor de indice  
        nroCombinacionesIndependientes = nroCombinacionesIndependientes*(abs(indMax-indMin)+1);
        % Se obtiene el arreglo con el número de elementos entre los
        % valores min y max
        nroElementos(k) = nroCombinacionesIndependientes;
        % Se obtiene el arreglo con el número de conjuntos dentro de la 
        % combinatoria        
        nroConjuntos(k) = (nroCombinaciones/nroElementos(k));
        % Se reinicializa para ir con el siguiente elemento del índice
        nroCombinacionesIndependientes = 1;
    end
end