function [nroCombinaciones, nroElementos, nroConjuntos]  = combvector2(min,max)
try
    %Pruebas para evitar errores
    pruebaConcatenacion = [min; max];
    for i = 1:length(max)
        if(min(i)>max(i))
            ME = MException('MATLAB:UndefinedFunction','Los valores de los indices no son los correctos');
            throw(ME);
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
catch ME
    if (strcmp(ME.identifier,'MATLAB:catenate:dimensionMismatch'))
        msg = ['Dimension mismatch occurred: First argument has ', ...
            num2str(size(min,2)),' columns while second has ', ...
            num2str(size(max,2)),' columns.'];
        causeException = MException('MATLAB:myCode:dimensions',msg);
        ME = addCause(ME,causeException);
    end
    % Se muestra este error cuando un valor del indice min supera al max
    if (strcmp(ME.identifier,'MATLAB:UndefinedFunction'))
        msg = ['Los valores de los indices no son los correctos: un valor del indice del primer argumento supera al segundo'];
        causeException = MException('MATLAB:UndefinedFunction',msg);
        ME = addCause(ME,causeException);
    end
    rethrow(ME)
end
