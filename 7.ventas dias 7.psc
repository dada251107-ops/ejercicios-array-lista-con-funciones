Algoritmo  VentasSemana
    Definir ventas Como Real
	
	Dimension ventas[7]
    LlenarVentas(ventas)
    MostrarVentas(ventas)
    
    CalcularTotal(ventas)
FinAlgoritmo

Funcion  LlenarVentas(ventas Por Referencia)
    Definir i Como Entero
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese las ventas del día ", i, ":"
        Leer ventas[i]
    FinPara
FinFuncion


Funcion MostrarVentas(ventas)
    Definir i Como Entero
    Escribir "Ventas registradas en la semana:"
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Día ", i, ": ", ventas[i]
    FinPara
FinFuncion

Funcion CalcularTotal(ventas)
    Definir i Como Entero
    Definir total Como Real
    total <- 0
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        total <- total + ventas[i]
    FinPara
    Escribir "El total de ventas en la semana es: ", total
FinFuncion

