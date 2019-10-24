//
//  ViewController.swift
//  Greetings
//
//  Created by Russell Gordon on 2019-10-24.
//  Copyright © 2019 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    // Any outlets, variables, or constants declared here are accessible anywhere below within this class
    @IBOutlet weak var inputInteger: UITextField!
    @IBOutlet weak var outputResult: UILabel!
    
    
    // MARK: Methods
    // Behaviours (things that should happen) are defined below this point
    
    // This method runs once when the view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func greetUser(_ sender: Any) {
        
        // Get the user's input as a string
        guard let givenValueAsString = inputInteger.text else {
            outputResult.text = "Please enter a value."
            return
        }
        
        // Try to convert the string to an integer
        guard let givenValueAsInteger = Int(givenValueAsString) else {
            outputResult.text = "Please enter an integer."
            return
        }
        
        // Give output that varies based on input
        switch givenValueAsInteger {
        case 1...3:
            // German
            // Translation via: https://www.indifferentlanguages.com/words/good_day
            outputResult.text = "Schönen Tag!"
        case 4...6:
            // Simplified Chinese
            // Translation via: https://www.indifferentlanguages.com/words/good_day
            outputResult.text = "美好的一天"
        case 7...9:
            // English
            outputResult.text = "Good day!"
        case 10:
            // Klingon
            // Translation via: https://www.wired.com/2016/09/klingon-phrase-guide/
            // Actually means: "Speak!"
            // Usage: As a greeting. "A Klingon will not waste time on trivial pleasantries..." Why say "hello" when you can issue an order, instead?
            outputResult.text = "vjIjatlh"
        default:
            // When the value is outside the given range, issue an error.
            outputResult.text = "Please enter an integer between 1 and 10."
        }
    }
    


}

