Funcion  dato_edad  <-  pediredad
	Definir dato_edad como cadena;
	Escribir " ingrese su edad "
	Leer dato_edad
FinFuncion


Funcion  mensaje<-crea_saludo(dato_edad)
	mensaje<-" tu edad es: "  + dato_edad
FinFuncion

Funcion imprimir_saludo(dato_saludo)
	Escribir dato_saludo
FinFuncion

Algoritmo edad  
	dato_edad <- pediredad();
	dato_mensaje<-crea_saludo(dato_edad)
	imprimir_saludo(dato_mensaje)
FinAlgoritmo