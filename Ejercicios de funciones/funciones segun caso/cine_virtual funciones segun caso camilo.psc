Funcion edad <- pedir_edad
    Definir edad Como Entero
    Escribir "Ingrese su edad:"
    Leer edad
FinFuncion

Funcion recomendacion <- recomendar_pelicula(edad)
    Definir recomendacion Como Caracter
	
    Segun edad Hacer
		
        0:6:
				recomendacion <- " Recomendamos películas animadas y educativas."
				
			7:17:
					recomendacion <- " Recomendamos animaciones, aventuras y comedias familiares."
					
				18:30:
						recomendacion <- " Recomendamos acción, drama, comedia y ciencia ficción."
						
					De Otro Modo:
						recomendacion <- " Recomendamos películas clásicas y dramas."
				FinSegun
FinFuncion
Funcion  imprimir(texto_)
    Escribir texto_
FinFuncion

Algoritmo CineVirtual
    Definir edad Como Entero
    Definir mensaje Como Caracter
	
    edad <- pedir_edad()
    mensaje <- recomendar_pelicula(edad)
    imprimir(mensaje)
FinAlgoritmo
