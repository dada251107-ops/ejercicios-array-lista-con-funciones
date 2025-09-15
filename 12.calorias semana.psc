Algoritmo  CaloriasSemana
    Definir dias, comidas Como Entero
    dias <- 7     
    comidas <- 3  
    
    Dimension calorias[dias, comidas]
    Dimension totalDia[dias]
    Definir totalSemana Como Entero
    
    LlenarCalorias(calorias, dias, comidas)
    
    CalcularTotalDia(calorias, totalDia, dias, comidas)
    
    totalSemana <- CalcularTotalSemana(totalDia, dias)
    
    MostrarResultados(calorias, totalDia, totalSemana, dias, comidas)
FinFuncion


Funcion  LlenarCalorias(calorias Por Referencia, dias, comidas)
    Definir i, j Como Entero
    Para i <- 1 Hasta dias Hacer
        Para j <- 1 Hasta comidas Hacer
            Escribir "Ingrese calorías del día ", i, " comida ", j, ":"
            Leer calorias[i,j]
        FinPara
    FinPara
FinFuncion


Funcion CalcularTotalDia(calorias, totalDia Por Referencia, dias, comidas)
    Definir i, j Como Entero
    Para i <- 1 Hasta dias Hacer
        totalDia[i] <- 0
        Para j <- 1 Hasta comidas Hacer
            totalDia[i] <- totalDia[i] + calorias[i,j]
        FinPara
    FinPara
FinFuncion


Funcion totalSemana <- CalcularTotalSemana(totalDia, dias)
    Definir i Como Entero
    totalSemana <- 0
    Para i <- 1 Hasta dias Hacer
        totalSemana <- totalSemana + totalDia[i]
    FinPara
FinFuncion

Funcion MostrarResultados(calorias, totalDia, totalSemana, dias, comidas)
    Definir i, j Como Entero
    Escribir "=== RESUMEN DE CALORÍAS ==="
    Para i <- 1 Hasta dias Hacer
        Escribir "Día ", i, ":"
        Para j <- 1 Hasta comidas Hacer
            Escribir "  Comida ", j, ": ", calorias[i,j], " cal"
        FinPara
        Escribir "  Total día ", i, ": ", totalDia[i], " cal"
    FinPara
    Escribir "---------------------------------"
    Escribir "Total de calorías en la semana: ", totalSemana, " cal"
FinFuncion

