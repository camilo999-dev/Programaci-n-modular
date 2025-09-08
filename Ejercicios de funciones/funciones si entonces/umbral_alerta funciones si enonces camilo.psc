Funcion temp <- pedir_temperatura
    Definir temp Como Real;
    Escribir "Ingrese la temperatura actual (°C):";
    Leer temp
FinFuncion

Funcion umbral <- pedir_umbral
    Definir umbral Como Real;
    Escribir "Ingrese el umbral de alerta (°C):";
    Leer umbral
FinFuncion

Funcion mensaje <- verificar_umbral(temp, umbral)
    Definir mensaje Como Caracter;
    
    Si temp > umbral Entonces;
        mensaje <- "?? ALERTA: Temperatura por encima del umbral (" + ConvertirATexto(temp) + " °C)";
    SiNo
        mensaje <- "? Temperatura normal (" + ConvertirATexto(temp) + " °C)";
    FinSi
FinFuncion

Funcion  imprimir_mensaje(texto_)
    Escribir texto_
FinFuncion


Algoritmo SensorUmbral
    Definir temp, umbral Como Real;
    Definir mensaje Como Caracter;
	
    temp <- pedir_temperatura()
    umbral <- pedir_umbral()
    mensaje <- verificar_umbral(temp, umbral)
    imprimir_mensaje(mensaje)
FinAlgoritmo

