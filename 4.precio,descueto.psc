SubProceso IngresarProductos(n, precios, cantidades, totales)
    Definir i Como Entero
    Escribir "¿Cuántos productos desea ingresar? (máx 10): "
    Leer n
    Si n < 1 Entonces
        Escribir "Número inválido. Se establece n = 1."
        n <- 1
    Sino
        Si n > 10 Entonces
            Escribir "Máximo 10. Se establece n = 10."
            n <- 10
        FinSi
    FinSi
	
    Para i <- 1 Hasta n Con Paso 1
        Escribir "Ingrese precio del producto ", i, ": "
        Leer precios[i]
        Escribir "Ingrese cantidad del producto ", i, ": "
        Leer cantidades[i]
        totales[i] <- precios[i] * cantidades[i]
    FinPara
FinSubProceso

SubProceso MostrarProductos(n, precios, cantidades, totales)
    Definir i Como Entero
    Si n = 0 Entonces
        Escribir "No hay productos ingresados."
    Sino
        Escribir "----- Productos ingresados -----"
        Para i <- 1 Hasta n
            Escribir "Producto ", i, ": Precio=", precios[i], " | Cantidad=", cantidades[i], " | Subtotal=", totales[i]
        FinPara
        Escribir "--------------------------------"
    FinSi
FinSubProceso

SubProceso CalcularDescuento(n, totales)
    Definir totalCompra, descuento, precioFinal Como Real
    Definir i Como Entero
	
    Si n < 0 Entonces
        Escribir "No hay productos para calcular."
    Sino
        totalCompra <- 0
        Para i <- 1 Hasta n Con Paso 1 Hacer
            totalCompra <- totalCompra + totales[i]
        FinPara
		
        // Regla de descuento escalonado
        Si totalCompra >= 1000 Entonces
            descuento <- totalCompra * 0.15
        Sino
            Si totalCompra >= 500 Entonces
                descuento <- totalCompra * 0.10
            Sino
                descuento <- totalCompra * 0.05
            FinSi
        FinSi
		
        precioFinal <- totalCompra - descuento
		
        Escribir "Total de la compra: ", totalCompra
        Escribir "Descuento aplicado: ", descuento
        Escribir "Precio final a pagar: ", precioFinal
    FinSi
FinSubProceso


// --- Algoritmo principal ---
Algoritmo DescuentoCompra
    Dimension precios[10]
    Dimension cantidades[10]
    Dimension totales[10]
	
    Definir n, opcion Como Entero
    n <- 0
    opcion_ <- 0
	
    Repetir
        Escribir ""
        Escribir "===== MENÚ ====="
        Escribir "1. Ingresar productos"
        Escribir "2. Mostrar productos"
        Escribir "3. Calcular descuento y precio final"
        Escribir "4. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion_
		
        Segun opcion_ Hacer
            1:
                 IngresarProductos(n, precios, cantidades, totales)
            2:
				 MostrarProductos(n, precios, cantidades, totales)
            3:
                 CalcularDescuento(n, totales)
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
    Hasta Que opcion_ = 4
	
FinAlgoritmo