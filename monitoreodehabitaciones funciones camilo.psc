Funcion numhabitaciones <- pedirnumhabitaciones
    Definir numhabitaciones Como Entero
    Escribir "Ingrese el numero de habitaciones a evaluar:"
    Leer numhabitaciones
FinFuncion

Funcion temperaturaMin <- pedirtempMin
    Definir temperaturaMin Como Real
    Escribir "Ingrese la temperatura minima permitida:"
    Leer temperaturaMin
FinFuncion

Funcion temperaturaMax <- pedirtempMax
    Definir temperaturaMax Como Real
    Escribir "Ingrese la temperatura maxima permitida:"
    Leer temperaturaMax
FinFuncion

Funcion alerta <- verificarAlerta(temp, tempMin, tempMax) 
	Definir alerta Como Logico;
    Si temp < tempMin O temp > tempMax Entonces
        alerta <- Verdadero
    SiNo
        alerta <- Falso
    FinSi
FinFuncion

Algoritmo monitoreodehabitaciones
    Definir habitaciones, i Como Entero
    Definir tMin, tMax, temp Como Real
    Definir alerta Como Logico
	
    // Pedir datos iniciales
    habitaciones <- pedirnumhabitaciones()
    tMin <- pedirtempMin()
    tMax <- pedirtempMax()
	
    // Recorrer habitaciones
    Para i <- 1 Hasta habitaciones Hacer
        Escribir "Ingrese la temperatura de la habitacion ", i, ":"
        Leer temp
		
        alerta <- verificarAlerta(temp, tMin, tMax)
		
        Si alerta Entonces
            Escribir "? ALERTA: La habitacion ", i, " esta fuera del rango (", temp, ")."
        SiNo
            Escribir "? Habitacion ", i, " dentro del rango (", temp, ")."
        FinSi
    FinPara
FinAlgoritmo

