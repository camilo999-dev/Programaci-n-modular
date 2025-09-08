Funcion paginas <- pedir_paginas
    Definir paginas Como Entero
    Escribir "Ingrese cantidad de p�ginas a imprimir (0 para salir):"
    Leer paginas
FinFuncion

Funcion disponibles <- procesar_impresion(disponibles, paginas)
    Si paginas > disponibles Entonces
        Escribir "Error: no hay suficiente papel. Quedan ", disponibles, " p�ginas."
    Sino
        disponibles <- disponibles - paginas
        Escribir "Impresi�n exitosa. P�ginas restantes: ", disponibles
    FinSi
FinFuncion

funcion imprimir_mensaje(texto_)
    Escribir texto_
FinFuncion


Algoritmo Impresora
    Definir disponibles, paginas Como Entero
    Definir continuar Como Logico
    disponibles <- 50
    continuar <- Verdadero
	
    Mientras disponibles > 0 Y continuar = Verdadero Hacer
        paginas <- pedir_paginas()
		
        Si paginas = 0 Entonces
            imprimir_mensaje("Saliendo de la impresora...")
            continuar <- Falso
        Sino
            disponibles <- procesar_impresion(disponibles, paginas)
        FinSi
    FinMientras
	
    imprimir_mensaje("Se acab� el papel en la impresora.")
FinAlgoritmo
