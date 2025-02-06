//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    @IBOutlet weak var diceResult: UILabel!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        var varResult: String
        var diceRandomNumber1 = Int.random(in: 0...5)
        var diceRandomNumber2 = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[diceRandomNumber1]
        diceImageView2.image = diceArray[diceRandomNumber2]
        
        if diceRandomNumber1 == diceRandomNumber2 {
            varResult = "Draw ... Roll Again!"
        } else if diceRandomNumber1 > diceRandomNumber2 {
            varResult = "Dice 1 Win!"
        } else {
            varResult = "Dice 2 Win!"
        }
        
        diceResult.text = varResult
    }
    
}
