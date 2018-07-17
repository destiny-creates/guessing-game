//
//  ViewController.swift
//  Guessing Game
//
//  Created by Chris Cook on 7/16/18.
//  Copyright © 2018 destinycreates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var guessingField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    var randomNumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
randomNumber = Int(arc4random_uniform(101))
        gameStatusLabel.text = "good luck!"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let userGuess = Int(guessingField.text!) else {
            return
        }
        if userGuess < 0 || userGuess > 100 {
            return
        }
        if userGuess == randomNumber {
            gameStatusLabel.text = "correct! you won!"
        } else if userGuess < randomNumber {
            gameStatusLabel.text = "your guess was to low"
        }
        else {
            gameStatusLabel.text = "your guess was to high"
        }
    
    }
    @IBAction func ResetButton(_ sender: Any) {
        gameStatusLabel.text = ("you tapped reset button")
    }
    



}
    


