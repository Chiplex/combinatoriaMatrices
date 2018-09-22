function matrizCombinada = FusionCM1(Matriz,Todos)
    min = Matriz(1,:);
    max = Matriz(end,:);
    for i = 1:length(Matriz)
        if(min(i)>max(i))
            disp('Los valores de los indices no son los correctos: un valor del indice del primer argumento supera al segundo');            
        end
    end
    matrizCombinada = [CombinatoriaMatriz1(Matriz);CombinatoriaMatriz2(Matriz);CombinatoriaMatriz3(Matriz);CombinatoriaMatriz4(Matriz)];
    if ~Todos
        matrizCombinada = unique(matrizCombinada,'rows');
    end    
end
