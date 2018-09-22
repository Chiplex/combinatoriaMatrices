function resultado = MatrizCombinada(matriz)
lingote = [NaN NaN NaN NaN];
while lingote(end,:) ~= matriz(end,:)
    ultimaMatriz = CombinatoriaMatrices6(matriz)
    lingote = [lingote; ultimaMatriz]
end
resultado = lingote;
end
