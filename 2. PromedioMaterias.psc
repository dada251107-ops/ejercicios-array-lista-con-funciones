Algoritmo  PromedioMaterias
    Definir opcion_ Como Entero
    Definir promedios Como Real
	Definir i, j Como Entero
    Dimension notas[3,3]  // 3 materias x 3 notas cada una
    Dimension promedios[3]
    opcion_ <- 0
    
    Repetir
        Escribir "===== MENÚ PRINCIPAL ====="
        Escribir "1. Ingresar notas"
        Escribir "2. Mostrar promedios por materia"
        Escribir "3. Salir"
        Leer opcion_
        
        Segun opcion_ Hacer
            1:
                IngresarNotas(notas)
            2:
                CalcularPromedios(notas,promedios)
                MostrarPromedios(promedios, notas)
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intenta de nuevo."
        FinSegun
    Hasta Que opcion_ = 3
FinAlgoritmo




Funcion  IngresarNotas(notas)
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "=== Materia ", i, " ==="
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Ingrese la nota ", j, ": "
            Leer notas[i,j]
        FinPara
    FinPara
FinFuncion

Funcion CalcularPromedios(notas,promedios)
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        suma <- 0
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            suma <- suma + notas[i,j]
        FinPara
        promedios[i] <- suma/3
    FinPara
FinFuncion

Funcion MostrarPromedios(promedios, notas)
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "El promedio de la materia ", i, " es: ", promedios[i]
    FinPara
FinFuncion
