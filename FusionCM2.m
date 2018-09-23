function matrizCombinada = FusionCM2(Matriz,Todos)
    min = Matriz(1,:);
    max = Matriz(end,:);
    for i = 1:size(Matriz,2)
        if(min(i)>max(i))
            disp('Los valores de los indices no son los correctos: un valor del indice del primer argumento supera al segundo');            
        end
    end    
    matrizCombinada = [];
    fmc = FusionCM1(Matriz,0);
    [nroCombinaciones, nroElementos, nroConjuntos] = PropiedadesCM(Matriz);    
    
    for i=1:nroCombinaciones            
        matrizCombinadaF1 = CombinatoriaMatriz1([fmc(i,:);fmc(i+1,:)]);
        matrizCombinada = [matrizCombinada; matrizCombinadaF1];
        matrizCombinadaF1 = CombinatoriaMatriz1([fmc(i,:);fmc(i+1,:)]);
        matrizCombinada = [matrizCombinada; matrizCombinadaF1];
        if max(end,:) == matrizCombinada(end,:)
            break;
        end
    end    
    if ~Todos
        matrizCombinada = unique(matrizCombinada,'rows');
    end    
end