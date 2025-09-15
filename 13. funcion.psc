Algoritmo  VelocidadPromedio
    Definir n Como Entero
    n <- 2   // Cantidad de carros
    
    Dimension distancia[n]
    Dimension tiempo[n]
    Dimension velocidad[n]
    
    // Subprocesos
    LlenarDatos(distancia, tiempo, n)
    CalcularVelocidades(distancia, tiempo, velocidad, n)
    MostrarResultados(distancia, tiempo, velocidad, n)
FinAlgoritmo


Funcion LlenarDatos(distancia Por Referencia, tiempo Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese la distancia recorrida por el carro ", i, " (en km):"
        Leer distancia[i]
        Escribir "Ingrese el tiempo del carro ", i, " (en horas):"
        Leer tiempo[i]
    FinPara
FinFuncion

Funcion  CalcularVelocidades(distancia, tiempo, velocidad Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        Si tiempo[i] > 0 Entonces
            velocidad[i] <- distancia[i] / tiempo[i]
        SiNo
            velocidad[i] <- 0
        FinSi
    FinPara
FinFuncion

Funcion  MostrarResultados(distancia, tiempo, velocidad, n)
    Definir i Como Entero
    Escribir "=== RESULTADOS DE VELOCIDAD PROMEDIO ==="
    Para i <- 1 Hasta n Hacer
        Escribir "Carro ", i, ": Distancia = ", distancia[i], " km | Tiempo = ", tiempo[i], " h | Velocidad = ", velocidad[i], " km/h"
    FinPara
FinFuncion

