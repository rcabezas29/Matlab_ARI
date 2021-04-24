n = input('Número de llantas: ');
pu = input('Introduzca el precio de las llantas: ');

precio = n * pu;
if (n > 4);
    precio = precio - 0.1 * precio;
end

disp('El precio total es');
disp(precio);