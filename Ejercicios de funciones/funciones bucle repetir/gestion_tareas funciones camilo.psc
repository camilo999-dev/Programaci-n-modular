Funcion  registrar_tareas(lista_tareas Por Referencia)
    Definir descripcion, fecha, continuar Como Caracter  
	
    Repetir
        Escribir "Ingrese la descripción de la tarea:"
        Leer descripcion
        Escribir "Ingrese la fecha de vencimiento:"
        Leer fecha
		
        lista_tareas <- lista_tareas + "Tarea: " + descripcion + " | Vence: " + fecha + "\n"
		
        Escribir "¿Desea agregar otra tarea? (SI/NO):"
        Leer continuar
        continuar <- Mayusculas(continuar)
    Hasta Que continuar = "NO"
FinFuncion

Funcion  mostrar_tareas(lista_tareas Por Valor)
    Escribir "------ Lista de Tareas ------"
    Escribir lista_tareas
FinFuncion


Algoritmo gestion_tareas
    Definir tareas Como Caracter
	
    registrar_tareas(tareas)
    mostrar_tareas(tareas)
FinAlgoritmo

