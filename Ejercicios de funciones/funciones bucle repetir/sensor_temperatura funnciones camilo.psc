Funcion verificar_temperatura
    Definir temperatura Como Real
	
    Repetir
        Escribir "Ingrese la temperatura actual (°C):"
        Leer temperatura
		
        Si temperatura >= 18 Y temperatura <= 25 Entonces
            Escribir "Temperatura dentro del rango aceptable. "
        Sino
            Escribir " Temperatura fuera del rango (18°C - 25°C). Intente de nuevo."
        FinSi
    Hasta Que temperatura >= 18 Y temperatura <= 25
FinFuncion

Algoritmo sensor_temperatura
    verificar_temperatura()
FinAlgoritmo

