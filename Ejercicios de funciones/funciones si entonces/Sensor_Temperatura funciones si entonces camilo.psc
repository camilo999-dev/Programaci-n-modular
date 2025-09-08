Funcion temp <- pedir_temperatura
    Definir temp Como Real;
    Escribir "Ingrese la temperatura actual (°C):";
    Leer temp
FinFuncion

Funcion mensaje <- verificar_temperatura(temp)
    Definir mensaje Como Caracter;
    Definir tMin, tMax Como Real;
    tMin <- 18
    tMax <- 25
    
    Si temp >= tMin Y temp <= tMax Entonces
        mensaje <- "? Temperatura adecuada (" + ConvertirATexto(temp) + " °C)";
    SiNo
        mensaje <- "? Temperatura fuera del rango (" + ConvertirATexto(temp) + " °C). Rango aceptable: 18°C - 25°C";
    FinSi
FinFuncion

SubProceso imprimir_mensaje(texto_)
    Escribir texto_
FinSubProceso

Algoritmo SensorTemperatura
    Definir temp Como Real;
    Definir mensaje Como Caracter;
	
    temp <- pedir_temperatura()
    mensaje <- verificar_temperatura(temp)
    imprimir_mensaje(mensaje)
FinAlgoritmo

