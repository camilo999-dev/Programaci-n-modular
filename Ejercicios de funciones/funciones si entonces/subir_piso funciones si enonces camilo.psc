Funcion piso <- pedir_piso
    Definir piso Como Entero
    Escribir "Por favor, ingrese un número de 1 al 8:"
    Leer piso
FinFuncion

Funcion mensaje <- verificar_piso(piso)
    Definir mensaje Como Caracter
    Si piso <= 2 Entonces
        mensaje <- "? Error: piso inválido"
    SiNo
        mensaje <- "? Piso " + ConvertirATexto(piso)
    FinSi
FinFuncion

Funcion  imprimir_mensaje(texto_)
    Escribir texto
FinFuncion

Algoritmo SubirPiso
    Definir numero_piso Como Entero
    Definir mensaje Como Caracter
	
    numero_piso <- pedir_piso()
    mensaje <- verificar_piso(numero_piso)
    imprimir_mensaje(mensaje)
FinAlgoritmo

