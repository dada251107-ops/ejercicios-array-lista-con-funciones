Algoritmo Principal
    Definir n Como Entero
    n <- 3 
    
    Dimension ingresos[n]
    Dimension gastos[n]
    Dimension ganancia[n]
    
    Dimension diaNac[n], mesNac[n], anioNac[n]
    Definir diaAct, mesAct, anioAct Como Entero
    Dimension edad[n]
    
    // --- PARTE 1: INGRESOS - GASTOS ---
    Escribir "=== CÁLCULO DE GANANCIA NETA ==="
    LlenarIngresos(ingresos, n)
    LlenarGastos(gastos, n)
    CalcularGanancia(ingresos, gastos, ganancia, n)
    MostrarGanancia(ingresos, gastos, ganancia, n)
    
    
    Escribir "=== CÁLCULO DE EDAD DE 3 PERSONAS ==="
    Escribir "Ingrese la fecha actual (día, mes, año):"
    Leer diaAct, mesAct, anioAct
    
    LlenarFechasNacimiento(diaNac, mesNac, anioNac, n)
    CalcularEdad(diaNac, mesNac, anioNac, diaAct, mesAct, anioAct, edad, n)
    MostrarEdad(edad, n)
FinAlgoritmo


Funcion LlenarIngresos(ingresos Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese ingresos de la persona ", i, ":"
        Leer ingresos[i]
    FinPara
FinFuncion

Funcion  LlenarGastos(gastos Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese gastos de la persona ", i, ":"
        Leer gastos[i]
    FinPara
FinFuncion

SubProceso CalcularGanancia(ingresos, gastos, ganancia Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        ganancia[i] <- ingresos[i] - gastos[i]
    FinPara
FinFuncion


Funcion MostrarGanancia(ingresos, gastos, ganancia, n)
    Definir i Como Entero
    Escribir "Resultados de Ganancia Neta:"
    Para i <- 1 Hasta n Hacer
        Escribir "Persona ", i, ": Ingresos = ", ingresos[i], " | Gastos = ", gastos[i], " | Ganancia = ", ganancia[i]
    FinPara
FinFuncion

Funcion  LlenarFechasNacimiento(diaNac Por Referencia, mesNac Por Referencia, anioNac Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese fecha de nacimiento de la persona ", i, " (dia, mes, año):"
        Leer diaNac[i], mesNac[i], anioNac[i]
    FinPara
FinFuncion

Funcion CalcularEdad(diaNac, mesNac, anioNac, diaAct, mesAct, anioAct, edad Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        edad[i] <- anioAct - anioNac[i]
        Si (mesAct < mesNac[i]) O (mesAct = mesNac[i] Y diaAct < diaNac[i]) Entonces
            edad[i] <- edad[i] - 1
        FinSi
    FinPara
FinFuncion

Funcion MostrarEdad(edad, n)
    Definir i Como Entero
    Escribir "Edades de las personas:"
    Para i <- 1 Hasta n Hacer
        Escribir "Persona ", i, ": ", edad[i], " años"
    FinPara
FinFuncion

