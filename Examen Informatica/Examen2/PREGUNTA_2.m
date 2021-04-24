%PREGUNTA_2
%RAÚL CABEZAS GONZÁLEZ
clc;

disp('(R1+R7+R4)*IA-R4*IB+R7*IC = V1+V2-V4');
disp('R4*IA-(R2+R3+R4+R5)*IB-R5*I-R5*IC = V2+V3');
disp('-R7*IA-R5*IB-(R5+R6+R7)*IC = V4-V5');

R1= input ('introduce el valor de R1 ');
R2= input ('introduce el valor de R2 ');
R3= input ('introduce el valor de R3 ');
R4= input ('introduce el valor de R4 ');
R5= input ('introduce el valor de R5 ');
R6= input ('introduce el valor de R6 ');
R7= input ('introduce el valor de R7 ');

V1 = input('introduce el valor de V1 ');
V2 = input('introduce el valor de V2 ');
V3 = input('introduce el valor de V3 ');
V4 = input('introduce el valor de V4 ');
V5 = input('introduce el valor de V5 ');

coeficientes = [...
    R1+R4+R7 -R4 R7;...
    R4 -R2-R3-R4-R5 -R5;...
    -R7 -R5 -R5-R6-R7];

terminosIndep = [V1+V2-V4;V2+V3;V4-V5];

solucionSN = det(coeficientes);

if solucionSN ~=0
    x = length (coeficientes);
    
    solucion=inv(coeficientes)*terminosIndep;
    
    disp('las corrinetes son ');
    for i= 1:x
        fprintf ('I%d= %f A\n' , i ,solucion(i));
    end
else 
    disp ('EL SISTEMA NO TIENE SOLUCION');
end