Funcion  registrar_vehiculos(cantidad Por Valor, resumen Por Referencia)
    Definir placa, hora Como Caracter
    Definir i Como Entero
	
    resumen <- "------ Veh�culos Registrados ------\n"
	
    Para i <- 1 Hasta cantidad Hacer
        Escribir "Veh�culo ", i
        Escribir "Ingrese la placa del veh�culo:"
        Leer placa
		
        Escribir "Ingrese la hora de ingreso (formato HH:MM):"
        Leer hora
		
        resumen <- resumen + "Placa: " + placa + " | Hora de ingreso: " + hora + "\n"
    FinPara
FinFuncion

Funcion  mostrar_resumen(resumen Por Valor)
    Escribir resumen
FinFuncion

Algoritmo registro_parqueadero
    Definir cantidad_vehiculos Como Entero
    Definir resumen_info Como Caracter
	
    Escribir "�Cu�ntos veh�culos ingresar�n al parqueadero?"
    Leer cantidad_vehiculos
	
    registrar_vehiculos(cantidad_vehiculos, resumen_info)
    mostrar_resumen(resumen_info)
FinAlgoritmo
