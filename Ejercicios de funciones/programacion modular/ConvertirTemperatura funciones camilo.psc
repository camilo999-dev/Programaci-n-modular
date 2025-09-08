Funcion celsius <- pedir_celsius
    Definir celsius Como Real
    Escribir "Ingrese la temperatura en grados Celsius:"
    Leer celsius
FinFuncion

Funcion mensaje <- convertir_a_fahrenheit(celsius)
    Definir fahrenheit Como Real
    Definir mensaje Como Caracter
	
    fahrenheit <- (celsius * 9/5) + 32
    mensaje <- "La temperatura en Celsius: " + ConvertirATexto(celsius) +" equivale a Fahrenheit: " + ConvertirATexto(fahrenheit)
FinFuncion

Funcion  imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion

Algoritmo ConvertirTemperatura
    Definir celsius Como Real
    Definir mensaje Como Caracter
	
    celsius <- pedir_celsius()
    mensaje <- convertir_a_fahrenheit(celsius)
    imprimir_mensaje(mensaje)
FinAlgoritmo

