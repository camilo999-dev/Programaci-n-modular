Funcion calorias <- pedir_calorias(dia)
    Definir calorias Como Real;
    Escribir "Ingrese las calorías consumidas el día ", dia, ":";
    Leer calorias
FinFuncion

Funcion mensaje <- crear_mensaje_dia(calorias, dia)
    Definir mensaje Como Cadena;
    mensaje <- "Día " + ConvertirATexto(dia) + " -> Calorías consumidas: " + ConvertirATexto(calorias);
FinFuncion

Funcion mensaje <- crear_mensaje_semana(total)
    Definir mensaje Como Caracter;
    mensaje <- "? Total calorías consumidas en la semana: " + ConvertirATexto(total);
FinFuncion

SubProceso imprimir_mensaje(texto_)
    Escribir texto_
FinSubProceso

Algoritmo CaloriasSemana
    Definir dia1, dia2, dia3, dia4, dia5, dia6, dia7 Como Real;
    Definir totalSemana Como Real;
    Definir mensaje1, mensaje2, mensaje3, mensaje4, mensaje5, mensaje6, mensaje7, mensajeTotal Como Caracter;
	
 
    dia1 <- pedir_calorias(1)
    mensaje1 <- crear_mensaje_dia(dia1, 1)
    imprimir_mensaje(mensaje1)
	
    dia2 <- pedir_calorias(2)
    mensaje2 <- crear_mensaje_dia(dia2, 2)
    imprimir_mensaje(mensaje2)
	
    dia3 <- pedir_calorias(3)
    mensaje3 <- crear_mensaje_dia(dia3, 3)
    imprimir_mensaje(mensaje3)

    dia4 <- pedir_calorias(4)
    mensaje4 <- crear_mensaje_dia(dia4, 4)
    imprimir_mensaje(mensaje4)
	
    dia5 <- pedir_calorias(5)
    mensaje5 <- crear_mensaje_dia(dia5, 5)
    imprimir_mensaje(mensaje5)
	
    dia6 <- pedir_calorias(6)
    mensaje6 <- crear_mensaje_dia(dia6, 6)
    imprimir_mensaje(mensaje6)

    dia7 <- pedir_calorias(7)
    mensaje7 <- crear_mensaje_dia(dia7, 7)
    imprimir_mensaje(mensaje7)
	
    totalSemana <- dia1 + dia2 + dia3 + dia4 + dia5 + dia6 + dia7
    mensajeTotal <- crear_mensaje_semana(totalSemana)
    imprimir_mensaje(mensajeTotal)
FinAlgoritmo

