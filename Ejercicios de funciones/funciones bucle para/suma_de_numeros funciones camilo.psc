Funcion  ingresar_numeros(suma Por Referencia)
    Definir numero Como Real
    Definir continuar Como Caracter
	
    suma <- 0
	
    Repetir
        Escribir "Ingrese un n�mero:"
        Leer numero
		
        suma <- suma + numero
		
        Escribir "�Desea ingresar otro n�mero? (SI/NO):"
        Leer continuar
        continuar <- Mayusculas(continuar)
    Hasta Que continuar = "NO"
FinFuncion

Funcion  mostrar_suma(suma Por Valor)
    Escribir "? La suma total de los n�meros ingresados es: ", suma
FinFuncion

Algoritmo suma_de_numeros
    Definir resultado_suma Como Real
	
    ingresar_numeros(resultado_suma)
    mostrar_suma(resultado_suma)
FinAlgoritmo

