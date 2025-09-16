Funcion  IngresarDatos(n, nombres, precios, cantidades)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1
        Escribir "Ingrese nombre del producto ", i, ": "
        Leer nombres[i]
        Escribir "Ingrese precio unitario de ", nombres[i], ": "
        Leer precios[i]
        Escribir "Ingrese cantidad vendida de ", nombres[i], ": "
        Leer cantidades[i]
    FinPara
FinFuncion


Funcion  MostrarDatos(n, nombres, precios, cantidades)
    Definir i Como Entero
    Escribir "----- Productos ingresados -----"
    Para i <- 1 Hasta n
        Escribir "Producto: ", nombres[i], " | Precio: ", precios[i], " | Cantidad: ", cantidades[i]
    FinPara
    Escribir "--------------------------------"
FinFuncion

Funcion CalcularTotal(n, precios, cantidades)
    Definir i Como Entero
    Definir totalUnidades Como Entero
    Definir totalPagar Como Real
    
    totalUnidades <- 0
    totalPagar <- 0
    
    Para i <- 1 Hasta n
        totalUnidades <- totalUnidades + cantidades[i]
        totalPagar <- totalPagar + (precios[i] * cantidades[i])
    FinPara
    
    Escribir "Total de unidades vendidas: ", totalUnidades
    Escribir "Total a pagar por la compra: $", totalPagar
FinFuncion

// --- Algoritmo Principal ---
Algoritmo VentasProductos
    Dimension nombres[3]
    Dimension precios[3]
    Dimension cantidades[3]
    
    Definir n Como Entero
    Definir _ Como Entero
    
    n <- 3
    opcion_ <- 0
    
    Repetir
        Escribir ""
        Escribir "===== MENÚ ====="
        Escribir "1. Ingresar datos de productos"
        Escribir "2. Mostrar productos"
        Escribir "3. Calcular total de unidades y precio a pagar"
        Escribir "4. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion_
        
        Segun opcion_ Hacer
            1:
				IngresarDatos(n, nombres, precios, cantidades)
            2:
				MostrarDatos(n, nombres, precios, cantidades)
            3:
				CalcularTotal(n, precios, cantidades)
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
    Hasta Que opcion_= 4
    
	FinAlgoritmO