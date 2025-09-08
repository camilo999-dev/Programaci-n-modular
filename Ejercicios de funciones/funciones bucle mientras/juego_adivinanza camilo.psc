Funcion secreto <- generar_numero
    Definir secreto Como Entero
    secreto <- azar(100) + 1
FinFuncion

Funcion intento <- pedir_intento
    Definir intento Como Entero
    Escribir "Ingrese su número (1-100):"
    Leer intento
FinFuncion

Funcion pista <- verificar_intento(intento, secreto)
    Definir pista Como Caracter
    Si intento < secreto Entonces
        pista <- "El número secreto es mayor."
    SiNo
        Si intento > secreto Entonces
            pista <- "El número secreto es menor."
        SiNo
            pista <- "Correcto"
        FinSi
    FinSi
FinFuncion

 Funcion imprimir_mensaje(texto)
    Escribir texto
FinFuncion

Algoritmo JuegoAdivinanza
    Definir secreto, intento Como Entero
    Definir pista Como Caracter
	
    secreto <- generar_numero()
    imprimir_mensaje("He pensado un número entre 1 y 100. ¡Adivínalo!")
	
    intento <- pedir_intento()
    pista <- verificar_intento(intento, secreto)
	
    Mientras pista <> "Correcto" Hacer
        imprimir_mensaje(pista)
        intento <- pedir_intento()
        pista <- verificar_intento(intento, secreto)
    FinMientras
	
    imprimir_mensaje("¡Felicidades! Adivinaste el número: " + ConvertirATexto(secreto))
FinAlgoritmo
