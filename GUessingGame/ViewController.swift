//
//  ViewController.swift
//  GUessingGame
//
//  Created by Kaleb Allen on 9/25/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var toHighToLow: UILabel!
    @IBOutlet weak var numberOfGuess: UILabel!
    @IBOutlet weak var whereYouTypeGuess: UITextField!
    var randomNumber = arc4random_uniform(100) + 1
    var numberOfAttempts =  5
    @IBAction func SummitButton(_ sender: Any) {
        let guess = Int(whereYouTypeGuess.text!)!
        if guess == randomNumber {
            self.view.backgroundColor = UIColor.yellow
            toHighToLow.text = "correct you won"
        } else if guess > randomNumber {
            numberOfAttempts -= 1
            numberOfGuess.text = "Attempts left: \(numberOfAttempts)"
            toHighToLow.text = "The number was to high"
        } else {
            numberOfAttempts -= 1
            toHighToLow.text = "The number was to low"
            numberOfGuess.text = "Attempts left: \(numberOfAttempts)"
        }
        if numberOfAttempts == 0 {
            self.view.backgroundColor = UIColor.red
            numberOfGuess.text = "Try again"
            whereYouTypeGuess.text = "The number was \(randomNumber)"
            
        }
        
        
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    
}

}
