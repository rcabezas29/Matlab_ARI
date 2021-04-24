clc;

numeroPuntos = input('Introduzca el número de puntos de ruta: ');
CoordX = [];
for i = 1:numeroPuntos
    x = 50 + 20*i;
    CoordX(i) = x;
end

disp(CoordX);

CoordY = [];
for i = 1:numeroPuntos
    y = 100 + 10*i;
    CoordY(i) = y;
end

disp(CoordY);

CoordZ = [];
for i = 1:numeroPuntos
    z = 500 + rand*700;
    CoordZ(i) = z;
end

disp(CoordZ);

MenuOpciones = 0;

while MenuOpciones ~= 6
   disp('1) Modificar un punto de ruta ');
    disp('2) Añadir un punto a la ruta ');
    disp('3) Eliminar un punto de la ruta ');
    disp('4) Cálculo de longitudes ');
    disp('5) Cálculo de pendientes ');
    disp('6) Salir ');
    
    opcionElegida = input('Eliga una opción: '); 
    
    switch opcionElegida
        case 1,
            puntoModificado = input('Elija el punto a modificar: ');
            
            if puntoModificado <=  numeroPunto
                nuevopuntoX = input('Nuevo punto de las X: ');
            nuevopuntoY = input('Nuevo punto de las Y: ');
            CoordX(puntoModificado) = nuevopuntoX;
            CoordY(puntoModificado) = nuevopuntoY;
            
            disp(CoordX);
            disp(CoordY);
            disp(CoordZ);
            
            else
                disp('El punto no existe');
            end
            
        case 2,
            NuevoPuntoX = input('Nuevo punto de las X: ');
            NuevoPuntoY = input('Nuevo punto de las Y: ');
            NuevoPuntoZ = input('Nuevo punto de las Z: ');
            
            CoordX = [CoordX, NuevoPuntoX];
            CoordY = [CoordY, NuevoPuntoY];
            CoordZ = [CoordZ, NuevoPuntoZ];
            
            disp(CoordX);
            disp(CoordY);
            disp(CoordZ);
            
        case 3,
            puntoEliminado = input('Punto a eliminar');
            
            if puntoEliminado <= numeroPuntos
                CoordX(puntoEliminado) = [];
                CoordY(puntoEliminado) = [];
                CoordZ(puntoEliminado) = [];
               
            disp(CoordX);
            disp(CoordY);
            disp(CoordZ);
            else
                disp('El punto no existe');
            end
        case 4,
           
        case 5, 
            
    
    end
    
    end