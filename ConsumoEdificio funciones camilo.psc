// Función 1: pide cantidad de oficinas de un piso
Funcion oficinas <- LeerOficinas(nombrePiso)
    Definir oficinas Como Entero
    Repetir
        Escribir "Ingrese cantidad de oficinas para el piso ", nombrePiso, " (>=1):"
        Leer oficinas
    Hasta Que oficinas >= 1
FinFuncion

// Función 2: calcula el consumo total de un piso
Funcion totalPiso <- CalcularConsumoPiso(oficinas, nombrePiso)
    Definir j Como Entero
    Definir consumo, totalPiso Como Real
    totalPiso <- 0
	
    Para j <- 1 Hasta oficinas Hacer
        Repetir
            Escribir "Ingrese consumo (horas) de la oficina ", j, " del piso ", nombrePiso, ":"
            Leer consumo
        Hasta Que consumo >= 0
        totalPiso <- totalPiso + consumo
    FinPara
FinFuncion

// Función 3: evalúa el rango de consumo
Funcion mensaje <- EvaluarConsumo(consumo)
    Definir mensaje Como Cadena
    Si consumo >= 0 Y consumo <= 30 Entonces
        mensaje <- "Consumo bajo"
    SiNo
        Si consumo > 30 Y consumo <= 60 Entonces
            mensaje <- "Consumo normal"
        SiNo
            Si consumo > 60 Y consumo <= 100 Entonces
                mensaje <- "Alto consumo"
            SiNo
                mensaje <- "No se puede seguir utilizando"
            FinSi
        FinSi
    FinSi
FinFuncion

// Algoritmo principal
Algoritmo ConsumoEdificio
    Dimension pisos[4]
    Definir i, oficinas Como Entero
    Definir totalPiso, totalEdificio Como Real
	
    pisos[1] <- "Ejecutivo"
    pisos[2] <- "VIP"
    pisos[3] <- "Normal"
    pisos[4] <- "Bodegas"
	
    totalEdificio <- 0
	
    Para i <- 1 Hasta 4 Hacer
        oficinas <- LeerOficinas(pisos[i])
        totalPiso <- CalcularConsumoPiso(oficinas, pisos[i])
		
        Escribir "Consumo total del piso ", pisos[i], ": ", totalPiso
        Escribir "Estado: ", EvaluarConsumo(totalPiso)
        Escribir "-----------------------------"
		
        totalEdificio <- totalEdificio + totalPiso
    FinPara
	
    Escribir "================================="
    Escribir "Consumo total del edificio: ", totalEdificio
    Escribir "Estado general: ", EvaluarConsumo(totalEdificio)
FinAlgoritmo

