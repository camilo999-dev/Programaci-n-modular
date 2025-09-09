Funcion  mostrar_menu
    Escribir "------ MENÚ DE COMIDAS RÁPIDAS ------"
    Escribir "1. Hamburguesa - $7000"
    Escribir "2. Pizza - $8000"
    Escribir "3. Papas fritas - $3000"
    Escribir "4. Refresco - $2000"
    Escribir "5. Salir"
FinFuncion


Funcion  procesar_pedido(total Por Referencia)
    Definir opcion Como Entero
	
    Repetir
        mostrar_menu()
        Escribir "Elija una opción del menú (1-5):"
        Leer opcion
		
        Segun opcion Hacer
            1:
                total <- total + 7000
            2:
                total <- total + 8000
            3:
                total <- total + 3000
            4:
                total <- total + 2000
            5:
                Escribir "Pedido finalizado."
            De Otro Modo:
                Escribir "Opción inválida. Intente nuevamente."
        FinSegun
    Hasta Que opcion = 5
FinFuncion


Funcion  mostrar_total(total Por Valor)
    Escribir "El costo total de su pedido es: $" + ConvertirATexto(total)
    Escribir "¡Gracias por su compra!"
FinFuncion


Algoritmo menu_comidas_rapidas
    Definir total Como Entero
    total <- 0
	
    procesar_pedido(total)
    mostrar_total(total)
FinAlgoritmo

