function [temp] = combmat3(min, max)
    [filas, columnas] = size(max);
    numeroFilas = combvector (min, max)
    temp=[];
    mat=[];

    for i=1:columnas
        difMasUno(i)= combvector(min(i),max(i));
    end

    for i=1:columnas
        productoriaEntreDiferencia(i) = numeroFilas/difMasUno(i);
    end

    for i=1:columnas
        columna = min(i);
        fila = 1;
        for j=1:numeroFilas
            temp(j,i) = columna;
            if fila == productoriaEntreDiferencia(i)
                fila = 1;
                columna = columna + 1;
            else
                fila = fila + 1;
            end
        end
    end
end