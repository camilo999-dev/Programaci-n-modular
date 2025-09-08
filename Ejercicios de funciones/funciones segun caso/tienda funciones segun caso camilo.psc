Funcion tipo <- pedir_tipo
    Definir tipo Como Caracter
    Escribir "Ingrese el tipo de producto (A = Alimentos, V = Vestimenta, E = Electrónicos):"
    Leer tipo
FinFuncion

Funcion cantidad <- pedir_cantidad
    Definir cantidad Como Entero
    Repetir
        Escribir "Ingrese la cantidad de unidades (positivo):"
        Leer cantidad
    Hasta Que cantidad > 0
FinFuncion

Funcion mensaje <- calcular_costo(tipo, cantidad)
    Definir precioBase, subtotal, total, descuento Como Real
	
    // Precios base
    Segun tipo Hacer
        "A":
            precioBase <- 11500
            descuento <- 0.10
        "V":
            precioBase <- 20200
            descuento <- 0.05
        "E":
            precioBase <- 50300
            descuento <- 0.0
        De Otro Modo:
            precioBase <- 0
            descuento <- 0
    FinSegun
	
    subtotal <- precioBase * cantidad
    total <- subtotal - (subtotal * descuento)
	
    mensaje <- "Subtotal: $" + ConvertirATexto(subtotal) + " | Total con descuento: $" + ConvertirATexto(total)
FinFuncion

Funcion  imprimir(texto_)
    Escribir texto_
FinFuncion

Algoritmo Tienda
    Definir tipo Como Caracter
    Definir cantidad Como Entero
    Definir mensaje Como Caracter
	
    tipo <- pedir_tipo()
    cantidad <- pedir_cantidad()
    mensaje <- calcular_costo(tipo, cantidad)
    imprimir(mensaje)
FinAlgoritmo

