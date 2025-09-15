Proceso AreasDeTriangulos
    Definir opcion_, n Como Entero
    Definir i Como Entero
    
    Escribir "¿Cuántos triángulos desea registrar? "
    Leer n
    
    Dimension bases[n], alturas[n], areas[n]
    
    opcion_ <- 0
    
    Repetir
        Escribir "===== MENÚ PRINCIPAL ====="
        Escribir "1. Ingresar datos de triángulos"
        Escribir "2. Calcular áreas"
        Escribir "3. Mostrar resultados"
        Escribir "4. Salir"
        Leer opcion_
        
        Segun opcion_ Hacer
            1:
                IngresarDatos(bases, alturas, n)
            2:
                CalcularAreas(bases, alturas, areas, n)
            3:
                MostrarResultados(bases, alturas, areas, n)
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 4
FinProceso


SubProceso IngresarDatos(bases Por Referencia, alturas Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese la base del triángulo ", i, ": "
        Leer bases[i]
        Escribir "Ingrese la altura del triángulo ", i, ": "
        Leer alturas[i]
    FinPara
FinSubProceso


SubProceso CalcularAreas(bases, alturas, areas Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        areas[i] <- (bases[i] * alturas[i]) / 2
    FinPara
FinSubProceso


SubProceso MostrarResultados(bases, alturas, areas, n)
    Definir i Como Entero
    Escribir "===== RESULTADOS ====="
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Triángulo ", i, ":"
        Escribir "   Base: ", bases[i]
        Escribir "   Altura: ", alturas[i]
        Escribir "   Área: ", areas[i]
    FinPara
FinSubProceso