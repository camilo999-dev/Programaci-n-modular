Funcion distancia <- pedir_distancia
    Definir distancia Como Real
    Escribir "Ingrese la distancia total del viaje (km):"
    Leer distancia
FinFuncion

Funcion velocidad <- pedir_velocidad
    Definir velocidad Como Real
    Escribir "Ingrese la velocidad promedio del coche (km/h):"
    Leer velocidad
FinFuncion

Funcion tiempo <- calcular_tiempo(distancia, velocidad)
    Definir tiempo Como Real
    tiempo <- distancia / velocidad
FinFuncion

Funcion  imprimir(texto_)
    Escribir texto_
FinFuncion


Algoritmo ViajeEnCoche
    Definir distancia, velocidad, tiempo Como Real
    Definir continuar Como Logico
    Definir respuesta Como Caracter
	
    continuar <- Verdadero
	
    Mientras continuar Hacer
        distancia <- pedir_distancia()
        velocidad <- pedir_velocidad()
        tiempo <- calcular_tiempo(distancia, velocidad)
		
        imprimir("Tiempo estimado de viaje: " + ConvertirATexto(tiempo) + " horas.")
		
        Escribir "¿Desea hacer otro viaje? (si/no):"
        Leer respuesta
        Si Minusculas(respuesta) <> "si" Entonces
            continuar <- Falso
        FinSi
    FinMientras
FinAlgoritmo

