Funcion peso <- pedir_peso(numPersona)
    Definir peso Como Real;
    Escribir "Ingrese el peso (kg) de la persona ", numPersona, ":";
    Leer peso
FinFuncion

Funcion altura <- pedir_altura(numPersona)
    Definir altura Como Real;
    Escribir "Ingrese la altura (m) de la persona ", numPersona, ":";
    Leer altura
FinFuncion

Funcion mensaje <- calcular_imc(peso, altura, numPersona)
    Definir imc Como Real;
    Definir mensaje Como Caracter;
    imc <- peso / (altura * altura);
    mensaje <- "Persona " + ConvertirATexto(numPersona) + " -> Peso: " + ConvertirATexto(peso) + "kg, Altura: " + ConvertirATexto(altura) + "m, IMC: " + ConvertirATexto(imc);
FinFuncion

Funcion  imprimir_mensaje(texto_)
    Escribir texto_;
FinFuncion

Algoritmo IMCDosPersonas
    Definir peso1, altura1, peso2, altura2 Como Real;
    Definir mensaje1, mensaje2 Como Caracter;
	
 
    peso1 <- pedir_peso(1)
    altura1 <- pedir_altura(1)
    mensaje1 <- calcular_imc(peso1, altura1, 1)
    imprimir_mensaje(mensaje1)
	
  
    peso2 <- pedir_peso(2)
    altura2 <- pedir_altura(2)
    mensaje2 <- calcular_imc(peso2, altura2, 2)
    imprimir_mensaje(mensaje2)
FinAlgoritmo

