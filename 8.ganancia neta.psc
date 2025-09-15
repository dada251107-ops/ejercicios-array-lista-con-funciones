Algoritmo  GananciaNeta
    Definir n Como Entero
    Escribir "¿Cuántos días desea registrar?"
    Leer n
    
    Dimension ingresos[n]
    Dimension gastos[n]
    Dimension ganancia[n]
	
    LlenarIngresos(ingresos, n)
    LlenarGastos(gastos, n)
    
    
    CalcularGanancia(ingresos, gastos, ganancia, n)
    

    MostrarResultados(ingresos, gastos, ganancia, n)
FinAlgoritmo


Funcion  LlenarIngresos(ingresos Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese ingresos del día ", i, ":"
        Leer ingresos[i]
    FinPara
FinFuncion


Funcion  LlenarGastos(gastos Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese gastos del día ", i, ":"
        Leer gastos[i]
    FinPara
FinFuncion


Funcion  CalcularGanancia(ingresos, gastos, ganancia Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        ganancia[i] <- ingresos[i] - gastos[i]
    FinPara
FinFuncion

Funcion MostrarResultados(ingresos, gastos, ganancia, n)
    Definir i Como Entero
    Escribir "Resumen de ingresos, gastos y ganancia neta:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Día ", i, ": Ingresos = ", ingresos[i], " | Gastos = ", gastos[i], " | Ganancia Neta = ", ganancia[i]
    FinPara
FinFuncion

