Funcion dato_suma <- pedir_numeros
	Escribir "vas a ingresar 5 numeros que deseas sumar"
	dato_suma = 0
	Para i = 1 Hasta 5 Hacer
		Escribir "numero", i
		Leer dato_numeros
		dato_suma <- dato_suma + dato_numeros
	FinPara
FinFuncion

Funcion dato_mensaje <- hacer_mensaje(dato_suma)
	dato_mensaje <- "la suma de los 5 numeros es de:"+ ConvertirATexto(dato_suma)
FinFuncion

Funcion imprimir_mensaje(dato_mensaje)
	Escribir dato_mensaje
FinFuncion

Algoritmo suma_de_5_numeros
	Definir suma Como Entero;
	Definir dato_mensaje Como Caracter;
	suma <- pedir_numeros
	dato_mensaje<- hacer_mensaje(suma)
	imprimir_mensaje(dato_mensaje)
	FinAlgoritmo
