//
//  ViewController.swift
//  first-project-dice
//
//  Created by Lauren Moor on 21/04/2020.
//  Copyright © 2020 Lauren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNumber: UILabel!
    @IBOutlet weak var totalScore: UILabel!
    var numbers = [1, 2, 3, 4, 5, 6]
    var currentScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNumber.text = ""
        totalScore.text = "Total Score:"
    }
    
    @IBOutlet weak var diceImage: UIImageView!
    

    @IBAction func whichNumber(_ sender: UIButton) {
        let numberGen = Int.random(in: 1...6)
        currentScore = numberGen + currentScore
        randomNumber.text = "\(numberGen)"
        totalScore.text = "Total Score: \(currentScore)"
        diceImage.image = UIImage(named: "dice\(numberGen)")
        
        if (numberGen == 1) {
            totalScore.text = "You lose!"
            currentScore = 0
        }
        
        if (currentScore > 20) {
            totalScore.text = "You win! You have \(currentScore) points!"
            currentScore = 0
        }
    }
    
}

