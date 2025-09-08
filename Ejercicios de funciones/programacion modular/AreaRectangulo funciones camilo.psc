Funcion base <- pedir_base
    Definir base Como Real
    Escribir "Ingrese la base del rect�ngulo:"
    Leer base
FinFuncion

Funcion altura <- pedir_altura
    Definir altura Como Real
    Escribir "Ingrese la altura del rect�ngulo:"
    Leer altura
FinFuncion

Funcion mensaje <- calcular_area(base, altura)
	
    area <- base * altura
    mensaje <- "El �rea del rect�ngulo con base " + ConvertirATexto(base) + " y altura " + ConvertirATexto(altura) + " es: " + ConvertirATexto(area)
FinFuncion

Funcion imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion

Algoritmo AreaRectangulo
    Definir base, altura, area Como Real
    Definir mensaje Como Cadena
	
    base <- pedir_base()
    altura <- pedir_altura()
    mensaje <- calcular_area(base, altura)
    imprimir_mensaje(mensaje)
FinAlgoritmo

