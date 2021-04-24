clc;
r = input('Radio del cilindro: ');
h = input('Altura del cilindro: ');

a = 2*pi*r*h+2*pi*r^2;
volumen = pi*r^2*h;
s = 2*pi*r*h;

disp('Área');
disp(a);
disp('Volumen');
disp(volumen);