Funcion precio <- pedir_precio
    Definir precio Como Real;
    Escribir "Ingrese el precio unitario del artículo:";
    Leer precio
FinFuncion

Funcion cantidad <- pedir_cantidad
    Definir cantidad Como Entero;
    Escribir "Ingrese la cantidad de artículos:";
    Leer cantidad
FinFuncion

Funcion mensaje <- calcular_factura(precio, cantidad)
    
    total <- precio * cantidad
    iva <- total * 0.19
    
    mensaje <- "El total es: $" + ConvertirATexto(total) + ", IVA (19%) = $" + ConvertirATexto(iva) + ", Total a pagar = $" + ConvertirATexto(total + iva)
FinFuncion

funcion imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion

Algoritmo CalculoFactura
    Definir precio,total, iva Como Real;
    Definir cantidad Como Entero;
    Definir mensaje Como Caracter;
	
    precio <- pedir_precio()
    cantidad <- pedir_cantidad()
    mensaje <- calcular_factura(precio, cantidad)
    imprimir_mensaje(mensaje)
FinAlgoritmo

