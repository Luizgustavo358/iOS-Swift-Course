//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Luiz Gustavo Bragança dos Santos on 02/08/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var tip: Tip?
    
    func getTotalValue() -> String {
        return String(format: "%.0f", tip?.totalValue ?? 0)
    }
    
    func getTipValue() -> String {
        let tipValue = tip?.tipPercentage ?? 0
        
        return String(format: "%.0f", tipValue * 100)
    }
    
    func getNumberOfPeople() -> String {
        let splitValue = String(tip?.numberOfPeople ?? 0)
        
        return splitValue
    }
    
    mutating func calculateTip(billValue: Double, tipValue: Double, split: Int) {
        let result = (billValue * (1 + tipValue)) / Double(split)
        
        tip = Tip(totalValue: result, tipPercentage: tipValue, numberOfPeople: split)
    }
}
