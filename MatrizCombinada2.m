function resultado = MatrizCombinada2(matriz)
resultado = matriz(1,:);
trabajar = true;
while trabajar
    barra = CombinatoriaMatrices6(matriz);
    resultado = [resultado; barra];
    if resultado(end,:) == matriz(end,:)
        trabajar = false;
    end
end
resultado = unique(resultado,'rows');
end
