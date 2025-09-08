Funcion dato_promedio <- pedir_promedio
	Escribir "ingrese la notas de la materia";
	dato_promedio = 0
	Para i = 1 Hasta 3 Hacer
		Escribir "notas", i
		Leer dato_notas
		dato_promedio <- dato_promedio + dato_notas / 3
		
	FinPara
FinFuncion

Funcion dato_mensaje <- hacer_mensaje(dato_promedio)
	dato_mensaje <- "el promedio de la materia es de:"+ ConvertirATexto(dato_promedio)
FinFuncion

Funcion imprimir_mensaje(dato_mensaje)
	Escribir dato_mensaje
FinFuncion
	
Algoritmo Promedio_Tres_Notas
	Definir promedio Como Real ;
	Definir dato_mensaje Como Caracter;
	promedio <- pedir_promedio
	dato_mensaje<- hacer_mensaje(promedio)
	imprimir_mensaje(dato_mensaje)
FinAlgoritmo


	
	



