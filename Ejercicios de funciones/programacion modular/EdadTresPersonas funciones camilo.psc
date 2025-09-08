Funcion anio <- pedir_anio_actual
    Definir anio Como Entero;
    Escribir "Ingrese el año actual:";
    Leer anio
FinFuncion

Funcion anioNac <- pedir_nacimiento(i)
    Definir anioNac Como Entero;
    Escribir "Ingrese el año de nacimiento de la persona ", i, ":";
    Leer anioNac
FinFuncion

Funcion edad <- calcular_edad(anioActual, anioNac)
    Definir edad Como Entero;
    edad <- anioActual - anioNac
FinFuncion

Funcion  imprimir_edad(i, edad)
    Escribir "Edad de la persona ", i, ": ", edad, " años.";
FinFuncion

Algoritmo EdadTresPersonas
    Definir anioActual, nac1, nac2, nac3 Como Entero;
    Definir edad1, edad2, edad3 Como Entero;

    anioActual <- pedir_anio_actual()
	
    nac1 <- pedir_nacimiento(1)
    edad1 <- calcular_edad(anioActual, nac1)
    imprimir_edad(1, edad1)
	
    nac2 <- pedir_nacimiento(2)
    edad2 <- calcular_edad(anioActual, nac2)
    imprimir_edad(2, edad2)

    nac3 <- pedir_nacimiento(3)
    edad3 <- calcular_edad(anioActual, nac3)
    imprimir_edad(3, edad3)
FinAlgoritmo

