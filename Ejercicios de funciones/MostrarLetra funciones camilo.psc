// Función 1: asignar una letra
Funcion letra <- asignar_letra
    Definir letra Como Caracter
    Escribir "Ingrese una letra del alfabeto:"
    Leer letra
FinFuncion

// Función 2: crear el mensaje
Funcion mensaje <- crear_mensaje(letra)
    Definir mensaje Como Cadena
    mensaje <- "La letra asignada es: " + letra
FinFuncion

// Función 3: imprimir el mensaje
Funcion  imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion


// Algoritmo principal
Algoritmo MostrarLetra
    Definir letra Como Caracter
    Definir mensaje Como Cadena
	
    letra <- asignar_letra()
    mensaje <- crear_mensaje(letra)
    imprimir_mensaje(mensaje)
FinAlgoritmo

