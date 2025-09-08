Funcion resultado <- pedir_resultado
    Definir resultado Como Caracter
    Escribir "Ingrese el resultado del partido (ganado / empatado / perdido):"
    Leer resultado
    resultado <- Mayusculas(resultado)
FinFuncion

Funcion puntos <- calcular_puntos(resultado)
    Definir puntos Como Entero
	
    Segun resultado Hacer
        "GANADO":
            puntos <- 3
        "EMPATADO":
            puntos <- 1
        "PERDIDO":
            puntos <- 0
        De Otro Modo:
            puntos <- -1  
    FinSegun
FinFuncion

Funcion  imprimir(texto)
    Escribir texto
FinFuncion


Algoritmo Campeonato
    Definir resultado Como Caracter
    Definir puntos Como Entero
	
    resultado <- pedir_resultado()
    puntos <- calcular_puntos(resultado)
	
    Si puntos = -1 Entonces
        imprimir(" Resultado no válido")
    SiNo
        imprimir("Puntos obtenidos: " + ConvertirATexto(puntos))
    FinSi
FinAlgoritmo
