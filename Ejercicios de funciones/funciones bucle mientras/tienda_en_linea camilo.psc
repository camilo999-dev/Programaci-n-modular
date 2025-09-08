Funcion subtotal <- pedir_producto
    Definir precio Como Real
    Definir cantidad Como Entero
    Definir subtotal Como Real
	
    Escribir "Ingrese precio del producto:"
    Leer precio
    Escribir "Ingrese cantidad:"
    Leer cantidad
	
    subtotal <- precio * cantidad
FinFuncion

Algoritmo TiendaEnLinea
    Definir total, subtotal Como Real
    Definir continuar Como Entero
    total <- 0
    continuar <- 1
	
    Mientras continuar = 1 Hacer
        subtotal <- pedir_producto()
        total <- total + subtotal
		
        Escribir "¿Desea agregar otro producto? (1=Sí, 0=No):"
        Leer continuar
    FinMientras
	
    Escribir "El costo total de la compra es: $", total
FinAlgoritmo

