Funcion costo <- calcular_impresion
    Definir paginas, precioPag, costo Como Real
    Escribir "Ingrese n�mero de p�ginas a imprimir:"
    Leer paginas
    Escribir "Ingrese precio por p�gina:"
    Leer precioPag
    costo <- paginas * precioPag
FinFuncion

Algoritmo CostoImpresion
    Definir total Como Real
    total <- calcular_impresion()
    Escribir " El costo total de impresi�n es: $", total
FinAlgoritmo

