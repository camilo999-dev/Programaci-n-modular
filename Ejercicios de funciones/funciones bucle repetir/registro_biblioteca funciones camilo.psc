Funcion  registrar_libros(acumulador Por Referencia)
    Definir titulo, autor, respuesta Como Caracter
    Definir paginas Como Entero
	
    acumulador <- ""
	
    Repetir
        Escribir "Ingrese el t�tulo del libro:"
        Leer titulo
		
        Escribir "Ingrese el autor del libro:"
        Leer autor
		
        Escribir "Ingrese el n�mero de p�ginas:"
        Leer paginas
		
        acumulador <- acumulador + "T�tulo: " + titulo + ", Autor: " + autor + ", P�ginas: " + ConvertirATexto(paginas) + "\n"
		
        Escribir "�Desea registrar otro libro? (SI/NO)"
        Leer respuesta
        respuesta <- Mayusculas(respuesta)
    Hasta Que respuesta = "NO"
FinFuncion


Funcion  crear_mensaje(acumulador Por Valor, mensaje Por Referencia)
    mensaje <- "Lista de libros registrados:\n" + acumulador
FinFuncion


Funcion  mostrar_mensaje(mensaje Por Valor)
    Escribir mensaje
FinFuncion


Algoritmo registro_biblioteca
    Definir libros Como Caracter
    Definir mensaje_final Como Caracter
	
    registrar_libros(libros)
    crear_mensaje(libros, mensaje_final)
    mostrar_mensaje(mensaje_final)
FinAlgoritmo

