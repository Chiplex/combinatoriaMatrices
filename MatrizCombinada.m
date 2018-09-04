function resultado = MatrizCombinada(min, max)
resultado = min;
ultimaMatriz = [];
    while ~isequal(resultado(end,:),max)        
        ultimaMatriz = FuncionRecursiva(resultado(end,:), max)
        resultado = vertcat(resultado, ultimaMatriz)
    end
end
