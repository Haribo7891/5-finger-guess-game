//
//  ViewController.swift
//  Five Finger Guess
//
//  Created by Harry Crank on 05/02/2018.
//  Copyright © 2018 Harry Crank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingersTextField: UITextField!
    
    @IBAction func guess(_ sender: Any) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if fingersTextField.text == diceRoll {
            resultLabel.text = "You're right! Well done."
        } else {
            resultLabel.text = "Wrong! It was a \(diceRoll)."
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

