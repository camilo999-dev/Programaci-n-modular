Funcion peso <- pedir_peso
    Definir peso Como Real
    Escribir "Ingrese su peso en kg:"
    Leer peso
FinFuncion

Funcion piso <- pedir_piso
    Definir piso Como Entero
    Escribir "Ingrese el piso al que desea ir (1-8):"
    Leer piso
FinFuncion

Funcion temp <- pedir_temperatura
    Definir temp Como Real
    Escribir "Ingrese la temperatura actual (°C):"
    Leer temp
FinFuncion

Funcion mensaje <- verificar_ascensor(peso, piso, temp)
    Definir limite, tMin, tMax Como Real
    
    limite <- 120   
    tMin <- 18
    tMax <- 25
    
    Si temp < tMin O temp > tMax Entonces
        mensaje <- " Temperatura no adecuada (" + ConvertirATexto(temp) + " °C). Ascensor detenido."
    SiNo
        Si peso > limite Entonces
            mensaje <- "? Ascensor sobrecargado. Peso máximo permitido: " + ConvertirATexto(limite) + " kg."
        SiNo
            mensaje <- "? Condiciones correctas. Ascensor moviéndose al piso " + ConvertirATexto(piso)
        FinSi
    FinSi
FinFuncion

SubProceso imprimir_mensaje(texto_)
    Escribir texto_
FinSubProceso

Algoritmo AscensorConTemperatura
    Definir peso Como Real
    Definir piso Como Entero
    Definir temp Como Real
    Definir mensaje Como Caracter
	
    peso <- pedir_peso()
    piso <- pedir_piso()
    temp <- pedir_temperatura()
    
    mensaje <- verificar_ascensor(peso, piso, temp)
    imprimir_mensaje(mensaje)
FinAlgoritmo

