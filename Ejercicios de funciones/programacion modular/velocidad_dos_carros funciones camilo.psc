Funcion distancia <- pedir_distancia(numCarro)
    Definir distancia Como Real;
    Escribir "Ingrese la distancia recorrida (km) del carro ", numCarro, ":";
    Leer distancia
FinFuncion

Funcion tiempo <- pedir_tiempo(numCarro)
    Definir tiempo Como Real;
    Escribir "Ingrese el tiempo (horas) del carro ", numCarro, ":";
    Leer tiempo
FinFuncion

Funcion mensaje <- calcular_velocidad(distancia, tiempo, numCarro)
    Definir velocidad Como Real;
    Definir mensaje Como Caracter;
    velocidad <- distancia / tiempo
    mensaje <- "Carro " + ConvertirATexto(numCarro) + " -> Distancia: " + ConvertirATexto(distancia) + " km, Tiempo: " + ConvertirATexto(tiempo) + " h, Velocidad: " + ConvertirATexto(velocidad) + " km/h";
FinFuncion

SubProceso imprimir_mensaje(texto_)
    Escribir texto_
FinSubProceso

Algoritmo VelocidadDosCarros
    Definir distancia1, distancia2, tiempo1, tiempo2 Como Real;
    Definir mensaje1, mensaje2 Como Caracter;

    distancia1 <- pedir_distancia(1)
    tiempo1 <- pedir_tiempo(1)
    mensaje1 <- calcular_velocidad(distancia1, tiempo1, 1)
    imprimir_mensaje(mensaje1)

    distancia2 <- pedir_distancia(2)
    tiempo2 <- pedir_tiempo(2)
    mensaje2 <- calcular_velocidad(distancia2, tiempo2, 2)
    imprimir_mensaje(mensaje2)
FinAlgoritmo

