// IMPORTAR BIBLIOTECA PARA SWIFT
import Foundation

// CREAMOS FUNCION VERIFICAR SI EL NUMERO INGRESADO ES DIVISIBLE ENTRE 2
func verificar(numero: Int) {
    if numero % 2 == 0 {
        print("\(numero) es un número par.")
    } else {
        print("\(numero) es un número impar.")
    }
}

// PEDIMOS AL USUARIO INGRESAR NUMERO, ADEMAS QUE CONDICIONAMOS A COLOCAR SOLO NUMEROS
print("Ingrese un número:")
if let input = readLine(), let numero = Int(input) {
  verificar(numero: numero)
} else {
    print("Entrada no válida. Por favor, ingrese un número entero.")
}