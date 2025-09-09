Funcion  registrar_ventas(lista Por Referencia, total Por Referencia)
    Definir producto Como Caracter
    Definir precio Como Real
    Definir continuar Como Caracter
	
    lista <- ""
    total <- 0
	
    Repetir
        Escribir "Ingrese el nombre del producto:"
        Leer producto
		
        Escribir "Ingrese el precio del producto:"
        Leer precio
		
        lista <- lista + "Producto: " + producto + " | Precio: $" + ConvertirATexto(precio) + "\n"
        total <- total + precio
		
        Escribir "¿Desea ingresar otra venta? (SI/NO):"
        Leer continuar
        continuar <- Mayusculas(continuar)
    Hasta Que continuar = "NO"
FinFuncion

Funcion mostrar_ventas(lista Por Valor, total Por Valor)
    Escribir "------ Resumen de Ventas ------"
    Escribir lista
    Escribir "Monto total de ventas: $" + ConvertirATexto(total)
FinFuncion

Algoritmo registro_ventas
    Definir lista_productos Como Caracter
    Definir total_ventas Como Real
	
    registrar_ventas(lista_productos, total_ventas)
    mostrar_ventas(lista_productos, total_ventas)
FinAlgoritmo

