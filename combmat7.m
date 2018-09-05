    function [temp] = combmat3(min, max)
        %tamaño del array max
        [filas, columnas] = size(max);
        %numero de posibles combinaciones
        numeroFilas = combvector (min, max);
        %matriz vacia
        temp=[];    
    
        %numero de posibles de combinaciones por cada indice
        for i=1:columnas
            difMasUno(i)= combvector(min(i),max(i));
        end
    
        %numero de veces que debe repetir el valor del indice 
        for i=1:columnas
            productoriaEntreDiferencia(i) = numeroFilas/difMasUno(i);
        end
    
        %i tomara valores de uno hasta el numero de columnas
        for i=1:columnas
            %tomar el valor del indice del array menor
            columna = min(i);
            %asignar fila
            fila = 1;
            %j tomara valores de uno hasta el numero de filas
            for j=1:numeroFilas
                % llenar en la matriz
                temp(j,i) = columna;
                %si fila es igual a numero de veces que debe repetir el valor del indice? se avanza a la siguiente columna: sumar el valor a la fila asignada
                if fila == productoriaEntreDiferencia(i)
                    fila = 1;
                    columna = columna + 1;
                else
                    fila = fila + 1;
                end
            end
        end
    end