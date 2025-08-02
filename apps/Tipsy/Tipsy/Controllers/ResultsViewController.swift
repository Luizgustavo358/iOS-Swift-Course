//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Luiz Gustavo Bragança dos Santos on 27/07/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var totalValue: String?
    var tipValue: String?
    var numberOfPeople: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalValue
        settingsLabel.text = "Split between \(numberOfPeople ?? "1") people, with \(tipValue ?? "0")% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
