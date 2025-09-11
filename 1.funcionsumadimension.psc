Proceso MenuSumaArreglo
    Definir opcion_ Como Entero
    Definir suma Como Entero
    
    Dimension numeros[5] 
    
    opcion_ <-0
    suma <- 0
    
    Repetir
        Escribir "===== MENÚ PRINCIPAL ====="
        Escribir "1. Ingresar 5 números"
        Escribir "2. Mostrar la suma"
        Escribir "3. Salir"
        Leer opcion_
        
        Segun opcion_ Hacer
            1:
                LlenarNumeros(numeros)
            2:
                suma <- SumarNumeros(numeros)
                Escribir "La suma de los 5 números es: ", suma
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intenta de nuevo."
        FinSegun
    Hasta Que opcion_ = 3
FinProceso


SubProceso LlenarNumeros( numeros )
    Definir i Como Entero
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el número ", i, ": "
        Leer numeros[i]
    FinPara
FinSubProceso


Funcion suma <- SumarNumeros( numeros )
    Definir i Como Entero
    Definir suma Como Entero
    suma <- 0
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        suma <- suma + numeros[i]
    FinPara
FinFuncion