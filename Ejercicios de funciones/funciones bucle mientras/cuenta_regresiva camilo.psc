// Función para pedir número inicial
Funcion numero <- pedir_numero
    Definir numero Como Entero
    Escribir "Ingrese un número entero positivo para la cuenta regresiva:"
    Leer numero
FinFuncion

Funcion texto <- procesar_regresiva(numero)
    Definir texto Como Cadena
    texto <- ConvertirATexto(numero)
FinFuncion

SubProceso imprimir_mensaje(texto)
    Escribir texto
FinSubProceso

Algoritmo CuentaRegresiva
    Definir numero Como Entero
	
    numero <- pedir_numero()
	
    Mientras numero >= 0 Hacer
        imprimir_mensaje(procesar_regresiva(numero))
        numero <- numero - 1
    FinMientras
	
    imprimir_mensaje("¡Tiempo cumplido!")
FinAlgoritmo

