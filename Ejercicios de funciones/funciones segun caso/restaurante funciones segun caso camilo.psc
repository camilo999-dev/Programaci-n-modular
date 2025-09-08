Funcion total <- pedir_consumo
    Definir opcion, cantidad Como Entero
    Definir subtotal, total Como Real
    total <- 0
	
    Escribir "=== Menú de Platos Típicos de Colombia ==="
    Escribir "1. Bandeja Paisa ($25000)"
    Escribir "2. Ajiaco ($18000)"
    Escribir "3. Sancocho ($20000)"
    Escribir "4. Arepas ($8000)"
    Escribir "0. Terminar platos"
    
    Repetir
        Escribir "Seleccione un plato (0 para terminar):"
        Leer opcion
        Segun opcion Hacer
            1:
                Escribir "Cantidad de Bandeja Paisa:"
                Leer cantidad
                subtotal <- cantidad * 25000
                total <- total + subtotal
            2:
                Escribir "Cantidad de Ajiaco:"
                Leer cantidad
                subtotal <- cantidad * 18000
                total <- total + subtotal
            3:
                Escribir "Cantidad de Sancocho:"
                Leer cantidad
                subtotal <- cantidad * 20000
                total <- total + subtotal
            4:
                Escribir "Cantidad de Arepas:"
                Leer cantidad
                subtotal <- cantidad * 8000
                total <- total + subtotal
            0:
                Escribir "Fin de platos."
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
    Hasta Que opcion = 0

    Escribir "=== Menú de Bebidas ==="
    Escribir "1. Jugo de Lulo ($6000)"
    Escribir "2. Aguapanela ($4000)"
    Escribir "3. Café Colombiano ($5000)"
    Escribir "4. Refresco ($3000)"
    Escribir "0. Terminar bebidas"
    
    Repetir
        Escribir "Seleccione una bebida (0 para terminar):"
        Leer opcion
        Segun opcion Hacer
            1:
                Escribir "Cantidad de Jugo de Lulo:"
                Leer cantidad
                subtotal <- cantidad * 6000
                total <- total + subtotal
            2:
                Escribir "Cantidad de Aguapanela:"
                Leer cantidad
                subtotal <- cantidad * 4000
                total <- total + subtotal
            3:
                Escribir "Cantidad de Café Colombiano:"
                Leer cantidad
                subtotal <- cantidad * 5000
                total <- total + subtotal
            4:
                Escribir "Cantidad de Refresco:"
                Leer cantidad
                subtotal <- cantidad * 3000
                total <- total + subtotal
            0:
                Escribir "Fin de bebidas."
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
    Hasta Que opcion = 0
FinFuncion

Funcion metodo <- pedir_metodo
    Definir metodo Como Caracter
    Escribir "Ingrese método de pago (efectivo / tarjeta / cheque):"
    Leer metodo
    metodo <- Minusculas(metodo)
FinFuncion

Funcion totalFinal <- aplicar_descuento(total, metodo)
    Definir totalFinal Como Real
    Segun metodo Hacer
        "efectivo":
            totalFinal <- total * 0.9
        "tarjeta":
            totalFinal <- total * 0.95
        "cheque":
            totalFinal <- total
        De Otro Modo:
            totalFinal <- total
    FinSegun
FinFuncion

Funcion  imprimir(texto)
    Escribir texto
FinFuncion


Algoritmo Restaurante
    Definir total, totalFinal Como Real
    Definir metodo Como Caracter
	
    total <- pedir_consumo()
    metodo <- pedir_metodo()
    totalFinal <- aplicar_descuento(total, metodo)
	
    imprimir("Costo sin descuento: $" + ConvertirATexto(total))
    imprimir("Costo final con descuento: $" + ConvertirATexto(totalFinal))
FinAlgoritmo

