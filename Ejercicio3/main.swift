
//AGREGAMOS LA BIBLIOTECA PARA LAS FUNCIONALIDADES BASICAS
import Foundation

//DEFINICION DE FUNCIONES PARA EL CALCULO DE LAS AREAS

// FUNCION PARA CALCULAR EL AREA DEL CUADRADO - (LxL)
func areaCuadrado(lado: Double) -> Double {
    return lado * lado
}

// FUNCION PARA CALCULAR EL AREA DEL RECTANGULO - (BxA)
func areaRectangulo(base: Double, altura: Double) -> Double {
    return base * altura
}

// FUNCION PARA CALCULAR EL AREA DEL TRIANGULO - (BxA/2)
func areaTriangulo(base: Double, altura: Double) -> Double {
    return 0.5 * base * altura
}

// FUNCION PARA CALCULAR EL AREA DEL CIRCULO (PIxR^2)
func areaCirculo(radio: Double) -> Double {
    return Double.pi * radio * radio
}

// FUNCION QUE LLAMA AL MENU Y REPRESENTA UN MENU INTERACTIVO
func menu() {
    var opcion: Int = 0

    repeat {
        print("\n=== Menú de Opciones ===")
        print("1. Calcular área del cuadrado")
        print("2. Calcular área del rectángulo")
        print("3. Calcular área del triángulo")
        print("4. Calcular área del círculo")
        print("5. Salir")

        print("Ingrese el número de la opción:")
        if let input = readLine(), let numero = Int(input) {
            opcion = numero
            switch opcion {
            case 1:
                print("Ingrese el lado del cuadrado:")
                if let lado = Double(readLine() ?? "") {
                    print("El área del cuadrado es: \(areaCuadrado(lado: lado))")
                } else {
                    print("Entrada no válida. Intente de nuevo.")
                }
            case 2:
                print("Ingrese la base del rectángulo:")
                if let base = Double(readLine() ?? "") {
                    print("Ingrese la altura del rectángulo:")
                    if let altura = Double(readLine() ?? "") {
                        print("El área del rectángulo es: \(areaRectangulo(base: base, altura: altura))")
                    } else {
                        print("Altura no válida. Intente de nuevo.")
                    }
                } else {
                    print("Base no válida. Intente de nuevo.")
                }
            case 3:
                print("Ingrese la base del triángulo:")
                if let base = Double(readLine() ?? "") {
                    print("Ingrese la altura del triángulo:")
                    if let altura = Double(readLine() ?? "") {
                        print("El área del triángulo es: \(areaTriangulo(base: base, altura: altura))")
                    } else {
                        print("Altura no válida. Intente de nuevo.")
                    }
                } else {
                    print("Base no válida. Intente de nuevo.")
                }
            case 4:
                print("Ingrese el radio del círculo:")
                if let radio = Double(readLine() ?? "") {
                    print("El área del círculo es: \(areaCirculo(radio: radio))")
                } else {
                    print("Radio no válido. Intente de nuevo.")
                }
            case 5:
                print("Saliendo del programa. ¡Hasta luego!")
            default:
                print("Opción no válida. Intente de nuevo.")
            }
        } else {
            print("Entrada no válida. Intente de nuevo.")
        }
    } while opcion != 5
}

// LLAMAR A LA FUNCION MENU PARA INICIAR LA APLICACION
menu()