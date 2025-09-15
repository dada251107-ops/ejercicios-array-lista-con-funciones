Algoritmo CalculoIMC
    Definir n Como Entero
    n <- 2
    
    Dimension peso[n]
    Dimension altura[n]
    Dimension imc[n]
    
    LlenarDatos(peso, altura, n)
    CalcularIMC(peso, altura, imc, n)
    MostrarResultados(peso, altura, imc, n)
FinAlgoritmo


Funcion LlenarDatos(peso Por Referencia, altura Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el peso (kg) de la persona ", i, ":"
        Leer peso[i]
        Escribir "Ingrese la altura (m) de la persona ", i, ":"
        Leer altura[i]
    FinPara
FinFuncion

Funcion CalcularIMC(peso, altura, imc Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Hacer
        imc[i] <- peso[i] / (altura[i] * altura[i])
    FinPara
FinFuncion

Funcion MostrarResultados(peso, altura, imc, n)
    Definir i Como Entero
    Escribir "=== RESULTADOS DEL IMC ==="
    Para i <- 1 Hasta n Hacer
        Escribir "Persona ", i, ": Peso = ", peso[i], " kg | Altura = ", altura[i], " m | IMC = ", imc[i]
    FinPara
FinFuncion

