//
//  ViewController.swift
//  HackwichEight
//
//  Created by Randy Bermudez on 3/9/21.
//  Copyright © 2021 Randy Bermudez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // these IBOutlets are so we can access the slider and labels
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel: UILabel!
    
    // declaring our variables and assigning an initial value
    var currentValue = 0
    var targetValue = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // assigns the value of the slider as a whole number
        currentValue = Int(slider.value)
        //targetValue = Int.random(in: 0...100)
        
        //call the function
// beginning of the loop
        startNewRound()
        
        //set image to slider
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
    }
    
    // what happens when the slider is moved
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        // displays the slider value
        print("The value of the slider is:  \(slider.value)")
        //converts slider value into an integer
        currentValue = Int(slider.value)
    }
    // brings us to the beginning of the loop to start a new game
    func startNewRound (){
        // assigns a new target goal for the game
        targetValue = Int.random(in: 0...100)
        // assigns the value of the slider position as a whole number
         currentValue = Int(slider.value)
        
        
    }
    // where we update the contents of the alert pop up
    func updateTargetLabel (){
       
        
    }
    
    
    
    // function of what happens when the slider is moved
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        //  the results of the slider and the target goal in an alert
        let message = "Your Guess is \(currentValue)" + "\n The Target Value for this round was:  \(targetValue)"
        
        // alert pop up message
        let alert = UIAlertController(title: "Guess the Number Game", message: message, preferredStyle: .alert)
        
        // prompt to begin a new round
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
        
        // makes the alert pop up
        alert.addAction(action)
        
        //alert pops up
        present(alert, animated: true,completion: nil)
        
        //brings us back to the start of a new round
        startNewRound()
        
        //converts a randomized number to a string to be placed into label as the next target goal
        targetLabel.text = String(targetValue)
    }
    

}

