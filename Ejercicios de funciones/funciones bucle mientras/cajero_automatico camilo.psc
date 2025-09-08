Funcion retiro <- pedir_monto
    Definir retiro Como Real
    Escribir "Ingrese el monto a retirar (0 para salir):"
    Leer retiro
FinFuncion

Funcion saldo <- procesar_retiro(saldo, retiro)
    Si retiro > saldo Entonces
        Escribir "Error: saldo insuficiente."
    Sino
        saldo <- saldo - retiro
        Escribir "Retiro exitoso. Saldo restante: $", saldo
    FinSi
FinFuncion

Algoritmo CajeroAutomatico
    Definir saldo, retiro Como Real
    Definir continuar Como Logico
    saldo <- 500000
    continuar <- Verdadero
	
    Mientras saldo > 0 Y continuar = Verdadero Hacer
        retiro <- pedir_monto()
		
        Si retiro = 0 Entonces
            Escribir "Gracias por usar el cajero."
            continuar <- Falso 
        Sino
            saldo <- procesar_retiro(saldo, retiro)
        FinSi
    FinMientras
FinAlgoritmo
