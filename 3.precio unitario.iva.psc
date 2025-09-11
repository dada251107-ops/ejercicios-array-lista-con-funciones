Algoritmo  FacturaConIVA
    Definir opcion_, n Como Entero
    Definir totalGeneral, ivaGeneral Como Real
    
    Escribir "¿Cuántos productos desea registrar? "
    Leer n
    
    Dimension precios[n], cantidades[n], totales[n]
    
    opcion_ <- 0
    totalGeneral <- 0
    ivaGeneral <- 0
    
    Repetir
        Escribir "===== MENÚ FACTURA ====="
        Escribir "1. Ingresar productos"
        Escribir "2. Mostrar totales con IVA"
        Escribir "3. Salir"
        Leer opcion_
        
        Segun opcion_ Hacer
            1:
                IngresarProductos(precios, cantidades, n)
                CalcularTotales(precios, cantidades, totales, n)
            2:
                MostrarFactura(precios, cantidades, totales, n, totalGeneral, ivaGeneral)
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intente de nuevo."
        FinSegun
    Hasta Que opcion_ = 3
FinAlgoritmo

Funcion  IngresarProductos(precios Por Referencia, cantidades Por Referencia, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese el precio unitario del producto ", i, ": "
        Leer precios[i]
        Escribir "Ingrese la cantidad del producto ", i, ": "
        Leer cantidades[i]
    FinPara
FinFuncion



Funcion CalcularTotales(precios, cantidades, totales, n)
    Definir i Como Entero
    Para i <- 1 Hasta n Con Paso 1 Hacer
        totales[i] <- precios[i] * cantidades[i]
    FinPara
FinFuncion



Funcion  MostrarFactura(precios, cantidades, totales, n, totalGeneral, ivaGeneral)
    Definir i Como Entero
    totalGeneral <- 0
    
    Escribir "===== DETALLE DE FACTURA ====="
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Producto ", i, ": "
        Escribir "   Precio unitario: $", precios[i]
        Escribir "   Cantidad: ", cantidades[i]
        Escribir "   Total: $", totales[i]
        totalGeneral <- totalGeneral + totales[i]
    FinPara
    
    ivaGeneral <- totalGeneral * 0.19
    Escribir "-------------------------------"
    Escribir "Subtotal: $", totalGeneral
    Escribir "IVA (19%): $", ivaGeneral
    Escribir "Total a pagar: $", totalGeneral + ivaGeneral
    Escribir "-------------------------------"
FinFuncion
