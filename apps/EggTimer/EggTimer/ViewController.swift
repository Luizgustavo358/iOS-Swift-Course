//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer!
    
    let eggTimes = [
        "Soft":   3,
        "Medium": 4,
        "Hard":   7
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setProgressBarLayout()
    }
    
    func setProgressBarLayout() {
        progressBar.layer.cornerRadius = 10
        progressBar.clipsToBounds = true
        progressBar.layer.sublayers?[1].cornerRadius = 10
        progressBar.subviews[1].clipsToBounds = true
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        reset(title: hardness)
        
        totalTime = eggTimes[hardness]! * 60
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    func reset(title: String) {
        secondsPassed = 0
        progressBar.progress = 0.0
        titleLabel.text = title
        
        timer.invalidate()
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            playSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
