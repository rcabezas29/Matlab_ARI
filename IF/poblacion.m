r = input('Introduzca el n�mero de habitantes: ');
t = input('Introduzca el n�merod de a�os a calcular desde 2018(5, 10, 20): ');

n = 5*t+2*exp(0.1*t);
j = n+r

if (t == 5)
    disp('La poblaci�n en 2023 ser�: ');
    disp (j);
end

if (t == 10)
    disp('La poblaci�n en 2028 ser�: ');
    disp (j);
end

if (t == 20)
    disp('La poblaci�n en 2038 ser�: ');
    disp (j);
end
