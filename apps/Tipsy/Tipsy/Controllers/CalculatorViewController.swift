//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
        
    @IBAction func tipChanged(_ sender: UIButton) {
        // dismiss the keyboard
        billTextField.endEditing(true)
        
        // deselect all tip buttons via IBOutlets
        zeroPctButton.isSelected   = false
        tenPctButton.isSelected    = false
        twentyPctButton.isSelected = false
        
        // make the button that triggered the IBAction selected
        sender.isSelected = true
        
        // get the current title of the button that was pressed
        let buttonTitle = sender.currentTitle!
        
        // remove the last character (%) from the title then turn it back into a String
        let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
        
        // turn the String into a Double
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        
        // divide the percent expressed out of 100 into a decial
        // e.g. 10 becomes 0.1
        tip = buttonTitleAsANumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfPeople = Int(sender.value)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        
        if bill != "" {
            calculatorBrain.calculateTip(billValue: Double(bill)!, tipValue: tip, split: numberOfPeople)
        }
        
        // triggers the segue to the result view controller
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.totalValue     = calculatorBrain.getTotalValue()
            destinationVC.tipValue       = calculatorBrain.getTipValue()
            destinationVC.numberOfPeople = calculatorBrain.getNumberOfPeople()
        }
    }
}

