r = input('Introduzca el número de habitantes: ');
t = input('Introduzca el númerod de años a calcular desde 2018(5, 10, 20): ');

n = 5*t+2*exp(0.1*t);
j = n+r

if (t == 5)
    disp('La población en 2023 será: ');
    disp (j);
end

if (t == 10)
    disp('La población en 2028 será: ');
    disp (j);
end

if (t == 20)
    disp('La población en 2038 será: ');
    disp (j);
end
