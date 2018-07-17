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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
gameStatusLabel.text = "we've changed the text here"
        submitButton.setTitle("Submit", for: .normal)
resetButton.setTitle("Reset", for: .normal)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

