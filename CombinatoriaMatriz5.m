function matrizCombinada = CombinatoriaMatriz5(Matriz)
    [nroCombinaciones, nroElementos, nroConjuntos] = PropiedadesCM(Matriz)
    [filas,columnas] = size(Matriz);
    matrizCombinada = [];
    tubo1 = [];
    tubo2 = [];
    tubo3 = [];
    tubo4 = [];
    min = Matriz(1,:);
    max = Matriz(end,:);
    for j=1:columnas
        if j==1
            bk = min(1,j);
            nt = 1;
            for i = 1:nroCombinaciones
                tubo1 = [tubo1;bk];
                lim = nroElementos(1,j+1) * nroElementos(1,j+2)  * nroElementos(1,j+3);
                if nt == lim
                   nt = 1;
                   if bk == max(1,j)
                       bk = min(1,j);
                   else
                       bk = bk + 1;
                   end
                else
                    nt=nt+1;
                end
                
            end
        end
        if j==2
            bk = min(1,j);
            nt = 1;
            for i = 1:nroCombinaciones
                tubo2 = [tubo2;bk];
                lim = nroElementos(1,j+1) * nroElementos(1,j+2);
                if nt == lim
                   nt = 1;
                   if bk == max(1,j)
                       bk = min(1,j);
                   else
                       bk = bk + 1;
                   end
                else
                    nt=nt+1;
                end
                
            end
        end
        if j==3
            bk = min(1,j);
            nt = 1;
            for i = 1:nroCombinaciones
                tubo3 = [tubo3;bk];
                if nt == nroElementos(1,j+1)                   
                   nt = 1;
                   if bk == max(1,j)
                       bk = min(1,j);
                   else
                       bk = bk + 1;
                   end
                else
                    nt=nt+1;
                end
                
            end
        end
        if j==4
            bk = min(1,j);
            for i = 1:nroCombinaciones
                tubo4 = [tubo4;bk];
                if bk == max(1,j)
                    bk = min(1,j);
                else
                    bk = bk+1;
                end
            end
        end        
    end
    matrizCombinada = [tubo1,tubo2,tubo3,tubo4];
end