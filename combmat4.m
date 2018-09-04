function matriz=combmat4(min, max)
    matriz = [];
    [fila columna] = size(min);
    for i=1:columna
        while ~(min(i) >= max(i))
            matriz = [matriz; min];
            min(i) = min(i)+ 1;
        end
    end
    matriz = [matriz; min];
end