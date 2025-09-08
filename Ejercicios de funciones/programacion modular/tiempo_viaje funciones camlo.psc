Funcion tiempo <- pedir_tiempo(tramo)
    Definir tiempo Como Real
    Escribir "Ingrese tiempo (horas) del tramo ", tramo, ":"
    Leer tiempo
FinFuncion

Funcion mensaje <- crear_mensaje_tramo(tiempo, tramo)
    Definir mensaje Como Caracter
    mensaje <- "Tramo " + ConvertirATexto(tramo) + " -> Tiempo: " + ConvertirATexto(tiempo) + " horas"
FinFuncion

Algoritmo TiempoViaje
    Definir t1, t2, t3, total Como Real
    Definir m1, m2, m3, mTotal Como Caracter
	
    t1 <- pedir_tiempo(1)
    m1 <- crear_mensaje_tramo(t1, 1)
    Escribir m1
	
    t2 <- pedir_tiempo(2)
    m2 <- crear_mensaje_tramo(t2, 2)
    Escribir m2
	
    t3 <- pedir_tiempo(3)
    m3 <- crear_mensaje_tramo(t3, 3)
    Escribir m3
	
    total <- t1 + t2 + t3
    mTotal <- "? Tiempo total de viaje: " + ConvertirATexto(total) + " horas"
    Escribir mTotal
FinAlgoritmo

