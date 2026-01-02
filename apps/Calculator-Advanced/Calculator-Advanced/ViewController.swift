//
//  ViewController.swift
//  Calculator-Advanced
//
//  Created by Luiz Gustavo Bragança dos Santos on 01/01/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishedTypingNumber: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        // What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        // What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
        }
        
    }
}

