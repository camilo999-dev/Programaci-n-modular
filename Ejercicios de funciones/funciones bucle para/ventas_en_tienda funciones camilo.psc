Funcion  registrar_ventas(resumen Por Referencia, total Por Referencia)
    Definir producto Como Caracter
    Definir precio, cantidad, subtotal Como Real
    Definir continuar Como Caracter
	
    resumen <- ""
    total <- 0
	
    Repetir
        Escribir "Ingrese el nombre del producto:"
        Leer producto
		
        Escribir "Ingrese el precio del producto:"
        Leer precio
		
        Escribir "Ingrese la cantidad vendida:"
        Leer cantidad
		
        subtotal <- precio * cantidad
        total <- total + subtotal
		
        resumen <- resumen + "Producto: " + producto + " | Precio: $" + ConvertirATexto(precio) + " | Cantidad: " + ConvertirATexto(cantidad) + " | Subtotal: $" + ConvertirATexto(subtotal) + "\n"
		
        Escribir "¿Desea registrar otra venta? (SI/NO):"
        Leer continuar
        continuar <- Mayusculas(continuar)
    Hasta Que continuar = "NO"
FinFuncion

Funcion  mostrar_resumen(resumen Por Valor, total Por Valor)
    Escribir "------ Resumen de Ventas ------"
    Escribir resumen
    Escribir "?? Total de ventas: $" + ConvertirATexto(total)
FinFuncion

Algoritmo ventas_en_tienda
    Definir detalle_ventas Como Caracter
    Definir total_ventas Como Real
	
    registrar_ventas(detalle_ventas, total_ventas)
    mostrar_resumen(detalle_ventas, total_ventas)
FinAlgoritmo

