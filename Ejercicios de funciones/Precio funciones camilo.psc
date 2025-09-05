Funcion precio <- asignar_precio
    Definir precio Como Real;
    Escribir "Ingrese el precio del artículo:";
    Leer precio
FinFuncion


Funcion mensaje <- crear_mensaje(precio)
    Definir mensaje Como Caracter;
    mensaje <- "El precio del artículo es $" + ConvertirATexto(precio)
FinFuncion


Funcion  imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion



Algoritmo MostrarPrecio
    Definir precio Como Real;
    Definir mensaje Como caracter;
	
    precio <- asignar_precio()
    mensaje <- crear_mensaje(precio)
    imprimir_mensaje(mensaje)
FinAlgoritmo

