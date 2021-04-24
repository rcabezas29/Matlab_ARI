a = input('Inserte número de 3 cifras: ');

c = fix(a/100);
rc = mod(a,100);
d = fix(rc/10);
u = mod(rc,10);

f = u*100 + d*10 + c;

disp('El número invertido es: ');
disp(f);
