Funcion  registrar_resultados(total Por Referencia, cantidad Por Referencia)
    Definir nota, continuar Como Caracter
    Definir nota_num Como Real
	
    total <- 0
    cantidad <- 0
	
    Repetir
        Escribir "Ingrese la nota del examen:"
        Leer nota_num
		
        total <- total + nota_num
        cantidad <- cantidad + 1
		
        Escribir "¿Desea ingresar otra nota? (SI/NO):"
        Leer continuar
        continuar <- Mayusculas(continuar)
    Hasta Que continuar = "NO"
FinFuncion

Funcion  calcular_promedio(total Por Valor, cantidad Por Valor, promedio Por Referencia)
    promedio <- total / cantidad
FinFuncion

Funcion  mostrar_resultado(promedio Por Valor)
    Escribir "El promedio de las notas es: ", promedio
	
    Si promedio >= 60 Entonces
        Escribir "Resultado: Aprobado "
    Sino
        Escribir "Resultado: Reprobado "
    FinSi
FinFuncion

Algoritmo promedio_examenes
    Definir suma, cantidad_notas Como Real
    Definir promedio_final Como Real
	
    registrar_resultados(suma, cantidad_notas)
    calcular_promedio(suma, cantidad_notas, promedio_final)
    mostrar_resultado(promedio_final)
FinAlgoritmo
