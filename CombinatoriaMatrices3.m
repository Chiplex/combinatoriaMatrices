function [matrizCombinada] = CombinatoriaMatrices3(min, max)
    try
        %Pruebas para evitar errores
        pruebaConcatenacion = [min; max];
        for i = 1:length(max)
            if(min(i)>max(i))
                ME = MException('MATLAB:UndefinedFunction','Los valores de los indices no son los correctos');
                throw(ME);
            end
        end
        
        [nroFilas, nroColumnas] = size(max);
        [nroCombinaciones, nroElementos, nroConjuntos] = CombMatPropiedades(min, max);
        bk = min;
        tubo = [];
        matrizCombinada = [];
        
        for i = 1:nroColumnas            
            for j = 1:nroElementos(i)
                for k = 1:nroConjuntos(i)
                    tubo = [tubo;bk(i)];
                end
                bk(i) = bk(i) + 1;
            end            
            matrizCombinada = [matrizCombinada,tubo];
            tubo = [];
        end     
    catch ME
        if (strcmp(ME.identifier,'MATLAB:catenate:dimensionMismatch'))
            msg = ['Dimension mismatch occurred: First argument has ', ...
                num2str(size(min,2)),' columns while second has ', ...
                num2str(size(max,2)),' columns.'];
            causeException = MException('MATLAB:myCode:dimensions',msg);
            ME = addCause(ME,causeException);
        end
        % Se muestra este error cuando un valor del indice min supera al max
        if (strcmp(ME.identifier,'MATLAB:UndefinedFunction'))
            msg = ['Los valores de los indices no son los correctos: un valor del indice del primer argumento supera al segundo'];
            causeException = MException('MATLAB:UndefinedFunction',msg);
            ME = addCause(ME,causeException);
        end
        rethrow(ME)
    end
end