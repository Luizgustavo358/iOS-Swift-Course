//
//  CalculatorLogic.swift
//  Calculator-Advanced
//
//  Created by Luiz Gustavo Bragança dos Santos on 02/01/26.
//

import Foundation

struct CalculatorLogic {
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        switch symbol {
        case "+/−":
            return number * -1
        case "AC":
            return 0
        case "%":
            return number * 0.01
        default:
            return nil
        }
    }
}
