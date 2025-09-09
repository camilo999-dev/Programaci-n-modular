Funcion  agregar_productos(productos Por Referencia, total Por Referencia)
    Definir nombre_producto Como Caracter
    Definir precio_producto Como Real
    Definir continuar Como Caracter
	
    productos <- ""
    total <- 0
	
    Repetir
        Escribir "Ingrese el nombre del producto:"
        Leer nombre_producto
		
        Escribir "Ingrese el precio del producto:"
        Leer precio_producto
		
        productos <- productos + "Producto: " + nombre_producto + " | Precio: $" + ConvertirATexto(precio_producto) + "\n"
        total <- total + precio_producto
		
        Escribir "¿Desea agregar otro producto? (SI/NO):"
        Leer continuar
        continuar <- Mayusculas(continuar)
    Hasta Que continuar = "NO"
FinFuncion

Funcion  mostrar_carrito(productos Por Valor, total Por Valor)
    Escribir "----- Carrito de Compras -----"
    Escribir productos
    Escribir "Total a pagar: $" + ConvertirATexto(total)
    Escribir "¡Gracias por su compra!"
FinFuncion

Algoritmo tienda_virtual
    Definir productos_agregados Como Caracter
    Definir total_compra Como Real
	
    agregar_productos(productos_agregados, total_compra)
    mostrar_carrito(productos_agregados, total_compra)
FinAlgoritmo

