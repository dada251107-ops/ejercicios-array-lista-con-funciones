Algoritmo ConvertirTemperaturas
    Definir n Como Entero
    Escribir "¿Cuántas temperaturas desea convertir?"
    Leer n
    
    Dimension celsius[n]
    Dimension fahrenheit[n]
	
    LlenarCelsius(celsius, n)
    
    ConvertirAFahrenheit(celsius, fahrenheit, n)
    
    MostrarResultados(celsius, fahrenheit, n)
FinAlgoritmo


Funcion LlenarCelsius(celsius Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese la temperatura en Celsius ", i, ":"
        Leer celsius[i]
    FinPara
FinFuncion

Funcion ConvertirAFahrenheit(celsius, fahrenheit Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        fahrenheit[i] <- (celsius[i] * 9/5) + 32
    FinPara
FinFuncion

Funcion MostrarResultados(celsius, fahrenheit, n)
    Definir i Como Entero
    Escribir "Resultados de conversión:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir celsius[i], " °C = ", fahrenheit[i], " °F"
    FinPara
FinFuncion

