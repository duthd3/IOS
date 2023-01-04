//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft":5, "Medium":7, "Hard":12]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
    
        
        
        let hardness = sender.currentTitle!
        
        
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        Timer.scheduledTimer(withTimeInterval:1.0, repeats:true){ [self]
            (Timer) in
            if self.secondsPassed < totalTime{
                
                self.secondsPassed += 1
                progressBar.progress = Float(secondsPassed)/Float(totalTime)
             
              
                
               
            }else{
                Timer.invalidate()
                print("Complete")
                self.titleLabel.text = "Complete"
            }
        }
    }
    
}
