Funcion costo <- calcular_impresion
    Definir paginas, precioPag, costo Como Real
    Escribir "Ingrese número de páginas a imprimir:"
    Leer paginas
    Escribir "Ingrese precio por página:"
    Leer precioPag
    costo <- paginas * precioPag
FinFuncion

Algoritmo CostoImpresion
    Definir total Como Real
    total <- calcular_impresion()
    Escribir " El costo total de impresión es: $", total
FinAlgoritmo

