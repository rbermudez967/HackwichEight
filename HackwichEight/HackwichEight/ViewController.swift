//
//  ViewController.swift
//  HackwichEight
//
//  Created by Randy Bermudez on 3/9/21.
//  Copyright © 2021 Randy Bermudez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel: UILabel!
    
    var currentValue = 0
    var targetValue = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = Int(slider.value)
        //targetValue = Int.random(in: 0...100)
        
        //call the function
        startNewRound()
        
        //set image to slider
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is:  \(slider.value)")
        currentValue = Int(slider.value)
    }
    
    func startNewRound (){
        targetValue = Int.random(in: 0...100)
         currentValue = Int(slider.value)
        
        
    }
    
    func updateTargetLabel (){
       
        
    }
    
    
    
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "Your Guess is \(currentValue)" + "\n The Target Value for this round was:  \(targetValue)"
        
        let alert = UIAlertController(title: "Guess the Number Game", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true,completion: nil)
        
        startNewRound()
        
        targetLabel.text = String(targetValue)
    }
    

}

