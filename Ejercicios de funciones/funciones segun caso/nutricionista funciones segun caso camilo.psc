Funcion peso <- pedir_peso
    Definir peso Como Real
    Escribir "Ingrese su peso en kg:"
    Leer peso
FinFuncion

Funcion altura <- pedir_altura
    Definir altura Como Real
    Escribir "Ingrese su altura en metros:"
    Leer altura
FinFuncion

Funcion mensaje <- calcular_imc(peso, altura)
    Definir imc Como Real
    Definir categoria, mensaje Como Caracter
    Definir rango Como Entero
	
    imc <- peso / (altura * altura)
	
    Si imc < 18.5 Entonces
        rango <- 1
    Sino
        Si imc < 24.9 Entonces
            rango <- 2
        Sino
            Si imc < 29.9 Entonces
                rango <- 3
            SiNo
                rango <- 4
            FinSi
        FinSi
    FinSi
	
    Segun rango Hacer
        1:
            categoria <- "Bajo peso"
        2:
            categoria <- "Peso normal"
        3:
            categoria <- "Sobrepeso"
        4:
            categoria <- "Obesidad"
    FinSegun
	
    mensaje <- "IMC: " + ConvertirATexto(imc) + " | Categoría: " + categoria
FinFuncion

Funcion  imprimir(texto_)
    Escribir texto_
FinFuncion

Algoritmo Nutricionista
    Definir peso, altura Como Real
    Definir mensaje Como Caracter
	
    peso <- pedir_peso()
    altura <- pedir_altura()
    mensaje <- calcular_imc(peso, altura)
    imprimir(mensaje)
FinAlgoritmo

