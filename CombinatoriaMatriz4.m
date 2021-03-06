function matrizCombinada = CombinatoriaMatriz4(Matriz)
    min = Matriz(1,:);
    max = Matriz(end,:);
    for i = 1:length(Matriz)
        if(min(i)>max(i))
            disp('Los valores de los indices no son los correctos: un valor del indice del primer argumento supera al segundo');            
        end
    end
    [nroFilas, nroColumnas] = size(max); 
    [nroCombinaciones, nroElementos, nroConjuntos] = PropiedadesCM (Matriz);
    bk = min;
    tubo = [];
    matrizCombinada = [];

    for i = 1:nroColumnas            
        for j = 1:nroConjuntos(i)                
            for k = 1:nroElementos(i)                    
                tubo = [tubo; bk(i)];                    
                bk(i) = bk(i) + 1;
            end                
            bk(i) = min(i);            
        end
        matrizCombinada = [matrizCombinada, tubo];
        tubo = [];
    end 
end