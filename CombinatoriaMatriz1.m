function matrizCombinada = CombinatoriaMatriz1(Matriz)
    min = Matriz(1,:);
    max = Matriz(end,:);
    for i = 1:length(Matriz)
        if(min(i)>max(i))
            disp('Los valores de los indices no son los correctos: un valor del indice del primer argumento supera al segundo');            
        end
    end        
    matrizCombinada = [];    
    [nroFilas nroColumnas] = size(min);
    for i=1:nroColumnas
        while min(i) < max(i)
            matrizCombinada = [matrizCombinada; min];
            min(i) = min(i)+ 1;
        end
    end
    matrizCombinada = [matrizCombinada; min];
end