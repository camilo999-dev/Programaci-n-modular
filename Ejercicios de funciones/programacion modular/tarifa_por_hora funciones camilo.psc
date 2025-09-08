Funcion tiempo <- pedir_tiempo
    Definir tiempo Como Real
    Escribir "Ingrese el tiempo en horas:"
    Leer tiempo
FinFuncion

Funcion tarifa <- pedir_tarifa
    Definir tarifa Como Real
    Escribir "Ingrese la tarifa por hora:"
    Leer tarifa
FinFuncion

Funcion mensaje <- calcular_costo(tiempo, tarifa)
    Definir costo Como Real
    Definir mensaje Como Cadena
	
    costo <- tiempo * tarifa
    mensaje <- "Tiempo: " + ConvertirATexto(tiempo) + " horas, Tarifa: $" + ConvertirATexto(tarifa) + "/hora, Costo total: $" + ConvertirATexto(costo)
FinFuncion

Funcion imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion

Algoritmo CalculoCosto
    Definir tiempo, tarifa Como Real
    Definir mensaje Como Cadena
	
    tiempo <- pedir_tiempo
    tarifa <- pedir_tarifa
    mensaje <- calcular_costo(tiempo, tarifa)
    imprimir_mensaje(mensaje)
FinAlgoritmo

