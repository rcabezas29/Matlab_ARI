%PREGUNTA_1
%RAÚL CABEZAS GONZÁLEZ
clc;

numeroAlumnos = input('Introduzca el numero de alumnos ');
if numeroAlumnos < 1
    disp ('ERROR ');
    disp ('introduzca un numero de alumnos validos ');
    
else
    numeroModulos = input('Introduzca el numero de modulos ');
    if numeroModulos < 1
    disp('ERROR ');
    disp('introduzca un numero de modilos validos ');
    else
        
Calificaciones2019 = fix(11*rand(numeroModulos,numeroAlumnos));
 
DNI = fix(100000 + 900000*rand(1,numeroAlumnos)); 
Calificaciones2019= [Calificaciones2019;DNI];
 
[filas,columnas]= size(Calificaciones2019);
codigoModulo= fix(500 + 200*rand(filas,1));

Calificaciones2019 = [Calificaciones2019,codigoModulo];
[filas,columnas]= size(Calificaciones2019);

Calificaciones2019(filas,columnas) = 0;
disp(Calificaciones2019); 
    end
end
pause();
 
opcionmenu = 1;
while opcionmenu ~=0
    clc;
    disp('1.- AÑADIR CALIFICACIONES ');
    disp('2.- INTRODUCIR CALIFICACIONES ');
    disp('3.- MODIFICAR CALIFICACION SUSPENSA ');
    disp('4.- MODIFICAR CALIFICACIONES CON MENOS DE 3');
    disp('5.- ELIMINAR ALUMNOS CON MÁS DE 3 SUPENSOS');
    disp('6.- LISTADO CALIFICACIONES MEDIAS ');
    disp('7.- CALIFICACIONES DESTACADAS ');
    disp('8.- ESTADISTICAS DE CALIFICACIONES ');
    disp('9.- SALIR DEL PROGRAMA');
    
    opcionmenu = input('introduce una opcion ');
    
    switch opcionmenu
        
            
        case 1
            disp(Calificaciones2019);
            [filas,columnas]= size(Calificaciones2019);
            modulo = input('Introduzca el nuevo módulo ');
            [moduloSN, posicionModulo] = ismember(modulo, Calificaciones2019(:,columnas));
            disp(Calificaciones2019(:,columnas));
        
        if moduloSN == 1
            disp('ERROR, EL MODULO INTRODUCIDO  YA EXISTE.');
            
        else          
           
           [filas,columnas]= size(Calificaciones2019);
           DatoNuevoMODULO = zeros(1,columnas);
           calificacionesIniciales = input('Introduzca un valor para las calificaciones del nuevo módulo');
           DatoNuevoMODULO(columnas) = modulo;
           DatoNuevoMODULO(1,1:columnas-1) = calificacionesIniciales;
           Calificaciones2019 = [Calificaciones2019(1:filas-2,:);DatoNuevoMODULO;Calificaciones2019(filas-1:filas,:)];
           
        end
            disp(Calificaciones2019);
            
            disp('Pulsa una tecla para continuar. ');
            pause();
            
        case 2
            disp(Calificaciones2019);
            [filas,columnas]= size(Calificaciones2019);
            dni = input('Introduzca el DNI del alumno cuyos datos se quieran actualizar ');
            [dniSN, Posiciondni] = ismember(dni, Calificaciones2019(filas,:));
           
            
        if dniSN == 0
            disp('ERROR, EL DNI INTRODUCIDO NO EXISTE. ');
        else
            for i= 1 : filas-1
                   fprintf('Introduce la nota del modulo %d: ', i);
                   Calificaciones2019(i, Posiciondni) = input('');
            end
        end
        
        disp(Calificaciones2019);
        disp('Pulsa una tecla para continuar. ');
        pause();
         
        case 3
            disp(Calificaciones2019);
            [filas,columnas]= size(Calificaciones2019);
            dni = input('Introduzca el DNI del alumno ');
            [dniSN, Posiciondni] = ismember(dni, Calificaciones2019(filas,:));
           
        
        if dniSN == 0
            disp('ERROR, EL DNI INTRODUCIDO NO EXISTE. ');
        else
             modulo = input('Introduzca el modulo ');
            [moduloSN, Posicionmodulo] = ismember(modulo, Calificaciones2019(:,columnas)); 
           
        
        if moduloSN == 0
            disp('ERROR, EL MODULO INTRODUCIDO NO EXISTE. ');
        else  
            if Calificaciones2019(Posicionmodulo,Posiciondni) < 5
                NuevaNota= input('Introduce la nueva nota del alumno ');
                Calificaciones2019(Posicionmodulo,Posiciondni)= NuevaNota;
            
            else 
                disp('El alumno tiene aprobado ya el módulo');
            end
        end
        end
        disp(Calificaciones2019);
        disp('Pulsa una tecla para continuar. ');
        pause();
        
        case 4
            disp(Calificaciones2019);
            [filas,columnas] = size(Calificaciones2019);
            dni = input('Introduzca el DNI de la persona que quiera modificar sus notas supensas ');
            [dniSN, Posiciondni] = ismember(dni, Calificaciones2019(filas, :));
            disp(Posiciondni);
            disp(Calificaciones2019(:,Posiciondni));
        
        if dniSN == 0
            disp('ERROR, EL DNI INTRODUCIDO NO EXISTE. ');
        else
            for i = 1:filas-1
                if Calificaciones2019(i,Posiciondni) < 4
                    Calificaciones2019(i,Posiciondni) = Calificaciones2019(i,Posiciondni)+1;
                end
            
            end
        end
        disp(Calificaciones2019);
        disp('Pulsa una tecla para continuar. ');
        pause();
        
        
       
        case 6
            [filas,columnas]= size(Calificaciones2019);
            media = [];
            b = Calificaciones2019(1:filas-1,1:columnas-1);
            media = mean(b);
            
            
        
       
            disp('   LISTADO DE CALIFICACIONES MEDIAS   ');
            disp('---------------------------------------');
            disp('NUMERO    DNI del Alumno     CALIFICACION MEDIA');
            disp('---------------------------------------');
            for i = 1:columnas-1
                fprintf('%d        %d         %5.2f        \n',...
                    i,Calificaciones2019(filas,i),media(1,i));
                
            end
        
        
        
        disp('Pulsa una tecla para continuar. ');
        pause();
        
        
        case 7 
            disp(Calificaciones2019);
            [filas,columnas]= size(Calificaciones2019);
            b = Calificaciones2019(1:filas-1,1:columnas-1);
            
            
            
            [maximo, Posicionmax] = max(b);
            [minimo, Posicionmin] = min(b);
        
        
            fprintf('CALIFICACIONES DESTACADAS \n'); 
            disp('----------------------------------------------------');
            disp('NUMERO    DNI   CALIFICACION MENOR     CALIFICACION MAYOR');
            disp('----------------------------------------------------');
            for i = 1:columnas-1
                fprintf('%d        %d         %d                %d\n',...
                    i,Calificaciones2019(filas,i), minimo(i), maximo(i));
                
            end
        
        
        
        disp('Pulsa una tecla para continuar. ');
        pause();
        
       
        
        case 9
            clc;
            disp ('HAS PARADO EL SISTEMA');
        
        
        
        otherwise
            disp('Opcion no valida');
    
    end
end
