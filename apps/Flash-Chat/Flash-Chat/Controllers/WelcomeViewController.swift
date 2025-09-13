//
//  ViewController.swift
//  Flash-Chat
//
//  Created by Luiz Gustavo Bragança dos Santos on 25/08/25.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "⚡️FlashChat"
    }


}

