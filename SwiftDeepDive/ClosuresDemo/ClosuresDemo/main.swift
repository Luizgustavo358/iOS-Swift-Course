//
//  main.swift
//  ClosuresDemo
//
//  Created by Luiz Gustavo Bragança dos Santos on 09/08/25.
//

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    // chama a funcao passando os parametros
    return operation(n1, n2)
}

let result1 = calculator(n1: 2, n2: 3, operation: { (n1: Int, n2: Int) -> Int in
    return n1 * n2
})

// ou podemos fazer assim:
let result2 = calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2 })

/*
   $0 -> primeiro parametro
   $1 -> segundo parametro
*/
let result3 = calculator(n1: 2, n2: 3, operation: { $0 * $1 })

// trailling closure: quando o último parâmetro é uma closure
let result4 = calculator(n1: 2, n2: 3) {$0 * $1}

print("Result1 = \(result1)")
print("Result2 = \(result2)")
print("Result3 = \(result3)")
print("Result4 = \(result4)")

// ------------------------------------------------------------ arrays

let array = [6, 2, 3, 9, 4, 1]

let arrayResult1 = array.map({ (n1) in n1 + 1 })
let arrayResult2 = array.map({ $0 + 1 })
let arrayResult3 = array.map{ $0 + 1 }

print("Array: \(array)")
print("Array1: \(arrayResult1)")
print("Array2: \(arrayResult2)")
print("Array3: \(arrayResult3)")

// converting to string
let newArray = array.map{"\($0)"}
print(newArray)
