Algoritmo TotalServicios
	
    Definir n, i Como Entero
    Definir consumos, total Como Real
	
    Escribir "¿Cuántos servicios desea registrar?"
    Leer n
    
    Dimension consumos[n]
    total <- 0
FinAlgoritmo

    
    // Subproceso para ingresar consumos
Funcion  IngresarConsumos(consumos, n)
        Definir i Como Entero
        Para i <- 1 Hasta n Con Paso 1 Hacer
            Escribir "Ingrese el consumo del servicio ", i, ":"
            Leer consumos[i]
        FinPara
FinFuncion


// Subproceso para calcular el total
Funcion CalcularTotal(consumos, n, total Por Referencia)
	Definir i Como Entero
	Para i <- 1 Hasta n Con Paso 1 Hacer
		total <- total + consumos[i]
	FinPara

// --- Llamadas a los subprocesos ---
IngresarConsumos(consumos, n)
CalcularTotal(consumos, n, total)

// --- Mostrar resultado ---
Escribir "El total a pagar por los servicios es: $", total
FinFuncion
