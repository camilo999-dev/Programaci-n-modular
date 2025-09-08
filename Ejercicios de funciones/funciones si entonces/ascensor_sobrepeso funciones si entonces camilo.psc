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

Funcion mensaje <- verificar_ascensor(peso, piso)
    Definir mensaje Como Caracter
    Definir limite Como Real
    limite <- 120 
    
    Si peso > limite Entonces
        mensaje <- " Ascensor sobrecargado. Peso permitido: " + ConvertirATexto(limite) + " kg."
    SiNo
        mensaje <- " Peso aceptado. Moviéndose al piso " + ConvertirATexto(piso)
    FinSi
FinFuncion

Funcion  imprimir_mensaje(texto)
    Escribir texto
FinFuncion

Algoritmo Ascensor_sobrepeso
    Definir peso Como Real
    Definir piso Como Entero
    Definir mensaje Como Caracter
	
    peso <- pedir_peso()
    piso <- pedir_piso()
    mensaje <- verificar_ascensor(peso, piso)
    imprimir_mensaje(mensaje)
FinAlgoritmo

