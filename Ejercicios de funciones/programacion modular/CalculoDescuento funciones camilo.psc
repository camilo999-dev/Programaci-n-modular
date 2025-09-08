Funcion precio <- pedir_precio
    Definir precio Como Real;
    Escribir "Ingrese el precio original de la compra:";
    Leer precio
FinFuncion

Funcion descuento <- pedir_descuento
    Definir descuento Como Real;
    Escribir "Ingrese el porcentaje de descuento (ej: 10 para 10%):";
    Leer descuento
FinFuncion

Funcion mensaje <- calcular_descuento(precio, descuento)
	
    rebaja <- precio * (descuento / 100)
    precioFinal <- precio - rebaja
	
    mensaje <- "Precio original: $" + ConvertirATexto(precio) + ", Descuento: " + ConvertirATexto(descuento) + "%" + ", Rebaja: $" + ConvertirATexto(rebaja) + ", Precio final: $" + ConvertirATexto(precioFinal)
FinFuncion

Funcion  imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion

Algoritmo CalculoDescuento
    Definir precio, rebaja, precioFinal Como Real;
    Definir descuento Como Real;
    Definir mensaje Como Caracter;
	
    precio <- pedir_precio()
    descuento <- pedir_descuento()
    mensaje <- calcular_descuento(precio, descuento)
    imprimir_mensaje(mensaje)
FinAlgoritmo

