Funcion venta <- pedir_venta(dia)
    Definir venta Como Real;
    Escribir "Ingrese las ventas del día ", dia, ":"
    Leer venta
FinFuncion

Funcion mensaje <- calcular_total
    Definir i Como Entero;
    Definir venta, total Como Real;
    Definir mensaje Como Caracter;
	
    total <- 0
    Para i <- 1 Hasta 7 Hacer
        venta <- pedir_venta(i)
        total <- total + venta
    FinPara
	
    mensaje <- "El total de ventas de la semana es: $" + ConvertirATexto(total);
FinFuncion

funcion imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion

Algoritmo VentasSemana
    Definir mensaje Como Caracter;
	
    mensaje <- calcular_total();
    imprimir_mensaje(mensaje);
FinAlgoritmo

