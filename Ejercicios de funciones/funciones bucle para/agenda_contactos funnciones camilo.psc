Funcion  agregar_contactos(agenda Por Referencia)
    Definir nombre, telefono, continuar Como Caracter
    agenda <- ""
	
    Repetir
        Escribir "Ingrese el nombre del contacto:"
        Leer nombre
		
        Escribir "Ingrese el número de teléfono:"
        Leer telefono
		
        agenda <- agenda + "Nombre: " + nombre + " | Teléfono: " + telefono + "\n"
		
        Escribir "¿Desea agregar otro contacto? (SI/NO):"
        Leer continuar
        continuar <- Mayusculas(continuar)
    Hasta Que continuar = "NO"
FinFuncion

Funcion  mostrar_agenda(agenda Por Valor)
    Escribir "------ Agenda de Contactos ------"
    Escribir agenda
FinFuncion

Algoritmo agenda_contactos
    Definir lista_contactos Como Caracter
	
    agregar_contactos(lista_contactos)
    mostrar_agenda(lista_contactos)
FinAlgoritmo

