//
//  ViewController.swift
//  4 Dicee
//
//  Created by Сергей П on 20.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var diceImageViewOne: UIImageView!
    @IBOutlet var diceImageViewTwo: UIImageView!
    
    let nameImages = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
//    var diceImage =
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewOne.image = UIImage(imageLiteralResourceName: nameImages[Int.random(in: 0...5)])
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: nameImages[Int.random(in: 0...5)])
    }
}

