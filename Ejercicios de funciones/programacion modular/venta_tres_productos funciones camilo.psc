Funcion total <- pedir_datos_producto(numProducto)
    Definir unidades, precio, total Como Real;
    Escribir "Ingrese unidades vendidas del producto ", numProducto, ":";
    Leer unidades
    Escribir "Ingrese el precio unitario del producto ", numProducto, ":";
    Leer precio
    total <- unidades * precio
FinFuncion

Funcion mensaje <- crear_mensaje_producto(total, numProducto)
    Definir mensaje Como Caracter;
    mensaje <- "Producto " + ConvertirATexto(numProducto) + " -> Total a pagar: $" + ConvertirATexto(total);
FinFuncion

SubProceso imprimir(texto_)
    Escribir texto_
FinSubProceso

Algoritmo VentaTresProductos
    Definir total1, total2, total3, totalGeneral Como Real;
    Definir mensaje1, mensaje2, mensaje3, mensajeTotal Como Caracter;
	
    total1 <- pedir_datos_producto(1)
    mensaje1 <- crear_mensaje_producto(total1, 1)
    imprimir(mensaje1)
	
    total2 <- pedir_datos_producto(2)
    mensaje2 <- crear_mensaje_producto(total2, 2)
    imprimir(mensaje2)
	
    total3 <- pedir_datos_producto(3)
    mensaje3 <- crear_mensaje_producto(total3, 3)
    imprimir(mensaje3)
	
    totalGeneral <- total1 + total2 + total3
    mensajeTotal <- "? Total general a pagar: $" + ConvertirATexto(totalGeneral);
    imprimir(mensajeTotal)
FinAlgoritmo

