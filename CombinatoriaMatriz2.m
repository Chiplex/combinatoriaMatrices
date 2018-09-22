function matrizCombinada = CombinatoriaMatriz2(Matriz)
    min = Matriz(1,:);
    max = Matriz(end,:);
    for i = 1:length(Matriz)
        if(min(i)>max(i))
            disp('Los valores de los indices no son los correctos: un valor del indice del primer argumento supera al segundo');            
        end
    end
    matrizCombinada = [];
    [nroFilas nroColumnas] = size(min);    
    while nroColumnas ~= 0
        while min(nroColumnas) < max(nroColumnas)
            matrizCombinada = [matrizCombinada; min];
            min(nroColumnas) = min(nroColumnas)+ 1;
        end
        nroColumnas = nroColumnas - 1;        
    end
    matrizCombinada = [matrizCombinada; max];
end
    