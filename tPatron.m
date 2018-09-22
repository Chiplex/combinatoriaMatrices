function matriz = tPatron(patron,pos)
[filas columnas] = size(patron);
matriz = [];
for i=1:15
    if i==pos
        matriz = [matriz; linspace(100,100,filas)];
    else
        matriz = [matriz; linspace(0,0,filas)];
    end 
end
end