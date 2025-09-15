Algoritmo CostoTrabajo
    Definir n Como Entero
    Escribir "¿Cuántas personas desea registrar?"
    Leer n
    
    Dimension tiempo[n]
    Dimension tarifa[n]
    Dimension costo[n]
    
    LlenarTiempo(tiempo, n)
    LlenarTarifa(tarifa, n)
    CalcularCosto(tiempo, tarifa, costo, n)
    MostrarResultados(tiempo, tarifa, costo, n)
FinAlgoritmo

Funcion  LlenarTiempo(tiempo Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el tiempo trabajado (en horas) de la persona ", i, ":"
        Leer tiempo[i]
    FinPara
FinFuncion

Funcion  LlenarTarifa(tarifa Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese la tarifa por hora de la persona ", i, ":"
        Leer tarifa[i]
    FinPara
FinFuncion

Funcion  CalcularCosto(tiempo, tarifa, costo Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        costo[i] <- tiempo[i] * tarifa[i]
    FinPara
Funcion 

Funcion  MostrarResultados(tiempo, tarifa, costo, n)
    Definir i Como Entero
    Escribir "=== RESULTADOS DEL COSTO DE TRABAJO ==="
    Para i <- 1 Hasta n Hacer
        Escribir "Persona ", i, ": Tiempo = ", tiempo[i], " hrs | Tarifa = ", tarifa[i], " $/hr | Costo Total = ", costo[i], " $"
    FinPara
FinFuncion

