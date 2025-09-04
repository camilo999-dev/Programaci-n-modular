Funcion Nombredelapersona <- pedirnombredelapersona
	Definir Nombredelapersona Como Caracter;
	Escribir "ingrese su nombre";
	Leer Nombredelapersona
FinFuncion
	
Funcion Apellidodelapersona <- pedirapellidodelapersona
	Definir Apellidodelapersona Como Caracter;
	Escribir "ingrese su apellido";
	Leer Apellidodelapersona
FinFuncion

Funcion VerSaludo(datoNombre_de_la_persona, datoApellido_de_la_persona)
	Definir textodelapersona Como Caracter;
	textodelapersona= datoNombre_de_la_persona+ " " + datoApellido_de_la_persona;
	Escribir "SALUDOS QUERIDO USUARIO:"+textodelapersona;
	
FinFuncion
Algoritmo registro_de_usuario
	datoNombre<-pedirnombredelapersona();
	datoApellido<-pedirapellidodelapersona();
	
	VerSaludo(datoNombre, datoApellido);
	
FinAlgoritmo
	