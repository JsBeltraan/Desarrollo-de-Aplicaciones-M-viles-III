// IMPORTAMOS BIBLIOTECA QUE NOS DA FUNCIONES BASICAS
import Foundation

// CREAMOS VARIABLE PARA ALMACENAR NOMBRE DE ARTICULOS E INVENTARIO
var inventario: [String: Int] = [:]

// PEDIMOS AL USUARIO QUE INGRESE EL NOMBRE DEL ARTICULO Y SU CANTIDAD PARA REGISTRARSE EN INVENTARIO
func registrarArticulo() {
    print("Ingrese el nombre del artículo:")
    if let nombre = readLine(), !nombre.isEmpty {
        print("Ingrese la cantidad del artículo:")
        if let cantidadStr = readLine(), let cantidad = Int(cantidadStr), cantidad > 0 {
            inventario[nombre] = cantidad
            print("Artículo registrado exitosamente.")
        } else {
            print("Cantidad no válida. Intente de nuevo.")
        }
    } else {
        print("Nombre no válido. Intente de nuevo.")
    }
}

// AQUI SE PUEDE VER LA LISTA DE ARTICULOS EXISTENTE
func verListaArticulos() {
    if inventario.isEmpty {
        print("El inventario está vacío.")
    } else {
        print("Lista de artículos:")
        for (nombre, cantidad) in inventario {
            print("\(nombre): \(cantidad)")
        }
    }
}

// FUNCION PARA CONSULTAR LA EXISTENCIA DE CADA PRODUCTO
func consultarExistencia() {
    print("Ingrese el nombre del artículo a consultar:")
    if let nombre = readLine(), !nombre.isEmpty {
        if let cantidad = inventario[nombre] {
            print("\(nombre) en existencia: \(cantidad)")
        } else {
            print("\(nombre) no encontrado en el inventario.")
        }
    } else {
        print("Nombre no válido. Intente de nuevo.")
    }
}

// FUNCION QUE DEFINE EL MENU INTERACTIVO DEL PROGRAMA, AQUI ES DONDE EL USUARIO SELECCIONA LAS OPCIONES
func menu() {
    var opcion: Int = 0
    repeat {
        print("\n=== Menú ===")
        print("1. Registro")
        print("2. Listado de Articulos")
        print("3. Consulta")
        print("4. Salir")
        print("Ingrese el número de la opción:")

        if let input = readLine(), let numero = Int(input) {
            opcion = numero
            switch opcion {
            case 1:
                registrarArticulo()
            case 2:
                verListaArticulos()
            case 3:
                consultarExistencia()
            case 4:
                print("Saliendo del programa. ¡Hasta luego!")
            default:
                print("Opción no válida. Intente de nuevo.")
            }
        } else {
            print("Entrada no válida. Intente de nuevo.")
        }
    } while opcion != 4
}

// LLAMA LA FUNCION MENU PARA QUE EL PROGRAMA EJECUTE
menu()
