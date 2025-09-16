algoritmo CostoImpresion
	
    Definir n, i Como Entero
    Definir paginas, total, precioPorPagina Como Real
	
    Escribir "¿Cuántos documentos desea imprimir?"
    Leer n
	
    Dimension paginas[n]
	
    Escribir "Ingrese el precio por página:"
    Leer precioPorPagina
    total <- 0
FinAlgoritmo

    // --- Subproceso para ingresar páginas ---
Funcion  IngresarPaginas(paginas, n)
        Definir i Como Entero
        Para i <- 1 Hasta n Con Paso 1 Hacer
            Escribir "Ingrese la cantidad de páginas del documento ", i, ":"
            Leer paginas[i]
        FinPara
FinFuncion

// --- Subproceso para calcular el costo total ---
Funcion  CalcularCosto(paginas, n, precioPorPagina, total Por Referencia)
	Definir i Como Entero
	Para i <- 1 Hasta n Con Paso 1 Hacer
		total <- total + (paginas[i] * precioPorPagina)
	FinPara

// --- Llamadas a los subprocesos ---
IngresarPaginas(paginas, n)
CalcularCosto(paginas, n, precioPorPagina, total)

// --- Resultado final ---
Escribir "El costo total de impresión es: $", total

FinFuncion
