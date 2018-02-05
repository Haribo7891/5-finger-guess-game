//
//  ViewController.swift
//  Five Finger Guess
//
//  Created by Harry Crank on 05/02/2018.
//  Copyright © 2018 Harry Crank. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var fingersTextField: UITextField!
    
    @IBAction func guess(_ sender: Any) {
        
        fingersTextField.resignFirstResponder()
        
        let diceRoll = String(arc4random_uniform(5))
        
        if fingersTextField.text == diceRoll {
            
            resultLabel.text = "You're right! Well done."
            
        } else {
            
            resultLabel.text = "Wrong! It was a \(diceRoll)."
            
        }
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        
        fingersTextField.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        fingersTextField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }

}

