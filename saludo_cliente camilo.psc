Funcion nombreCliente <- pedirNombre
	Definir nombreCliente Como Caracter;
	Escribir "Escriba el nombre del cliente: ";
	Leer nombreCliente
FinFuncion

Funcion verSaludo(datonombre_Cliente, hora)
	Definir textoCliente Como Caracter;
	
	
	textoCliente = datonombre_Cliente
	
	Si hora >= 1 Y hora < 12 Entonces
		Escribir "Buenos días, " + textoCliente
	SiNo
		Si hora >= 12 Y hora < 18 Entonces
			Escribir "Buenas tardes, " + textoCliente
		SiNo
			Escribir "Buenas noches, " + textoCliente
		FinSi
	FinSi
FinFuncion

Algoritmo saludo_cliente
	Definir datonombre_Cliente Como Caracter;
	Definir hora Como Entero;
	
	datonombre_Cliente <- pedirNombre();
	
	Escribir "dijite la hora actual (o a 23): " ;
	verSaludo(datonombre_Cliente, hora);
FinAlgoritmo

