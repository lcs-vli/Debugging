//
//  ViewController.swift
//  Shopping
//
//  Created by Russell Gordon on 2019-10-24.
//  Copyright © 2019 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    // Any outlets, variables, or constants declared here are accessible anywhere below within this class
    @IBOutlet weak var inputHunger: UISlider!
    @IBOutlet weak var inputCookieAppearance: UISlider!
    @IBOutlet weak var inputCookieSmell: UISlider!
    @IBOutlet weak var outputResult: UILabel!
    
    // MARK: Methods
    // Behaviours (things that should happen) are defined below this point
    
    // This method runs once when the view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func decideWhetherToBuyCookie(_ sender: Any) {
        
        // By default, UISlider values are of type Float.
        // Convert each given value to an integer.
        let hunger = Int(inputHunger.value)
        let appearance = Int(inputCookieAppearance.value)
        let smell = Int(inputCookieSmell.value)

        // The user has to be hungry, at least a little bit.
        // Then, so long as the combined values have a sum that is 15 or greater, the user will buy the cookie.
        if hunger + appearance + smell > 15 {
            outputResult.text = "You bought the cookie. Yum!"
        } else {
            outputResult.text = "No cookie today."
        }
        
    }

}

