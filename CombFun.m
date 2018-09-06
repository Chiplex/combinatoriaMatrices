function MatrizRecombinada = CombFun(min, max)
    MatrizRecombinada = unique(vertcat(CombinatoriaMatrices1(min,max),CombinatoriaMatrices2(min,max),CombinatoriaMatrices3(min,max),CombinatoriaMatrices4(min,max)),'rows');
end
