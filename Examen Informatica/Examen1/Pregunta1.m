clc;

numeroAlumnos = input('Introduzca el número de alumnos que pertenecen al módulo: ');
IdAlumnos = [];
for i = 1:numeroAlumnos
    x = fix(1500 + rand*1000);
    IdAlumnos(i) = x; 
end

    disp(IdAlumnos);
    
NotasPotencia = [];
for i = 1:numeroAlumnos
    x = fix(rand*10);
    NotasPotencia(i) = x; 
end

    disp(NotasPotencia);    
    

NotasSMR = [];
for i = 1:numeroAlumnos
    x = fix(rand*10);
    NotasSMR(i) = x; 
end

    disp(NotasSMR);    
    
MenuOpciones = 0;
while   MenuOpciones ~= 6
    disp('1) Añadir un alumno ');
    disp('2) Modificar un alumno ');
    disp('3) Modificar notas ');
    disp('4) Listado de notas ');
    disp('5) Listado de alumnos ');
    disp('6) Salir ');
    
    opcionElegida = input('Eliga una opción: ');
    
    switch opcionElegida
        case 1,
            IDnuevoAlumno = input('Ingrese el ID del alumno nuevo: ');
            NotaSMRnuevoAlumno = input('Ingrese la nota de SMR del nuevo alumno: ');
            NotaPotencianuevoAlumno = input('Ingrese la nota de Potencia del nuevo alumno: ');
            
            IdAlumnos = [IdAlumnos, IDnuevoAlumno];
            NotasSMR = [NotasSMR, NotaSMRnuevoAlumno];
            NotasPotencia = [NotasPotencia, NotaPotencianuevoAlumno];
            
            disp(IdAlumnos);
            disp(NotasSMR);
            disp(NotasPotencia);
        case 2,
            IDAlumnoModificado = input('Ingrese el ID del alumno a modificar: ');
            
            [e, p] = ismember(IDAlumnoModificado, IdAlumnos);
            if e == 1
                IdAlumnos = [IdAlumnos(p), IdAlumnos];
                IdAlumnos(p+1) = [];
                disp(IdAlumnos);
            else
                disp('No existe ese alumno');
            end
        case 3,
            IDAlumnoNotasModificadas = input('Ingrese el ID del alumno a modificar: ');
            
            [e, p] = ismember(IDAlumnoNotasModificadas, IdAlumnos);
            
            if e == 1
                NuevaNotaSMR = input('Ingrese la nota modificada de SMR: ');
                NuevaNotaPotencia = input('Ingrese la nota modificada de Potencia: ');
                
                NotasSMR(p) = NuevaNotaSMR;
                NotasPotencia(p) = NuevaNotaPotencia;
                
                disp(IdAlumnos);
                disp(NotasSMR);
                disp(NotasPotencia);
            else
                disp('No existe ese alumno');
            end
        case 4,
           
            
        case 5,
            
    end
end

            
            
            