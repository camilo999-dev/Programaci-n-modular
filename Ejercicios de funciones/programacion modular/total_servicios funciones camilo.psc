// Función para pedir consumo de un servicio
Funcion costo <- pedir_servicio(nombre)
    Definir consumo, precioUnitario, costo Como Real
    Escribir "Ingrese consumo del servicio ", nombre, ":"
    Leer consumo
    Escribir "Ingrese precio unitario del servicio ", nombre, ":"
    Leer precioUnitario
    costo <- consumo * precioUnitario
FinFuncion

// Algoritmo
Algoritmo TotalServicios
    Definir agua, luz, internet, total Como Real
	
    agua <- pedir_servicio("Agua")
    Escribir "Total Agua: $", agua
	
    luz <- pedir_servicio("Luz")
    Escribir "Total Luz: $", luz
	
    internet <- pedir_servicio("Internet")
    Escribir "Total Internet: $", internet
	
    total <- agua + luz + internet
    Escribir "? Total a pagar por servicios: $", total
FinAlgoritmo

