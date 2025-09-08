Funcion ingresos <- pedir_ingresos
    Definir ingresos Como Real;
    Escribir "Ingrese el total de ingresos:";
    Leer ingresos
FinFuncion

Funcion gastos <- pedir_gastos
    Definir gastos Como Real;
    Escribir "Ingrese el total de gastos:";
    Leer gastos
FinFuncion

Funcion mensaje <- calcular_ganancia(ingresos, gastos)
    Definir ganancia Como Real;
    Definir mensaje Como Caracter;
	
    ganancia <- ingresos - gastos
    mensaje <- "Ingresos: $" + ConvertirATexto(ingresos) + ", Gastos: $" + ConvertirATexto(gastos) + ", Ganancia neta: $" + ConvertirATexto(ganancia);
FinFuncion

Funcion  imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion

Algoritmo CalculoGanancia
    Definir ingresos, gastos Como Real;
    Definir mensaje Como Caracter;
	
    ingresos <- pedir_ingresos();
    gastos <- pedir_gastos();
    mensaje <- calcular_ganancia(ingresos, gastos);
    imprimir_mensaje(mensaje);
FinAlgoritmo

