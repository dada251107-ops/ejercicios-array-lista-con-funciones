Algoritmo TiempoTotalViaje
	
    Definir n, i Como Entero
    Definir tiempos, total Como Real
	
    Escribir "¿Cuántos tramos (parciales) tiene el viaje?"
    Leer n
    
    Dimension tiempos[n]
    total <- 0
	
FinAlgoritmo

    
    // --- Subprocesos ---
Funcion IngresarTiempos(tiempos, n)
        Definir i Como Entero
        Para i <- 1 Hasta n Con Paso 1 Hacer
            Escribir "Ingrese el tiempo del tramo ", i, " en horas:"
            Leer tiempos[i]
        FinPara
FinFuncion


Funcion CalcularTiempoTotal(tiempos, n, total Por Referencia)
	Definir i Como Entero
	Para i <- 1 Hasta n Con Paso 1 Hacer
		total <- total + tiempos[i]
	FinPara
// --- Llamadas a subprocesos ---
IngresarTiempos(tiempos, n)
CalcularTiempoTotal(tiempos, n, total)

// --- Resultado final ---
Escribir "El tiempo total del viaje es: ", total, " horas."
FinFuncion
