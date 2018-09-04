function [mat] = combmat5(min, max)
    bk = min;
    % Tamaño del array max
    [filas, columnas] = size(max);
    % Numero de posibles combinaciones
    numTotalFilas = combvector (min, max)
    % Matrices vacia
    mat = [;];
    temp = [;];
    
    % i tomara valores de uno hasta el numero de columnas    
    for i=1:columnas
        nroElementos(i) = combvector(min(i),max(i));
        nroVecesRepiteConjunto(i) = (numTotalFilas/combvector(min(i),max(i)));
    end
    
    % i tomara valores de uno hasta el numero de columnas
    for i=1:columnas
        % j tomará valores de uno hasta el numero de veces que se repite
        % cada conjunto
        for j = 1:nroVecesRepiteConjunto(i)
            % k tomará valores de uno hasta el numero de cada elemento
            for k = 1:nroElementos(i)
                % se guarda los valores que salen del elemento del array
                temp = [temp; bk(i)];
                % se obtiene el siguiente valor
                bk(i) = bk(i) + 1;
            end
            % se toma el valor del indice de la siguiente columna
            bk(i) = min(i);            
        end
        temp
        % se concatena en la matriz correspondiente
        mat = [mat, temp];
        
        % se reinicializa la variable temporal
        temp = [];
        
        %aqui habria que guardar los vectores y ordenarlo
    end
    % Se busca las filas únicas
    mat = unique(mat,'rows');
end