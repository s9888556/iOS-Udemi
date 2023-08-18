//
//  ViewController.swift
//  12 Tipsy
//
//  Created by Сергей П on 15.08.2023.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var personNumberLabel: UILabel!
    
    var tip: Float = 0.1
    var person = 2
    var billTotal: Float = 0.0
    var finalResult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {

        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        if sender.currentTitle == "0%" {
            tip = 0.0
        } else if sender.currentTitle == "10%" {
            tip = 0.1
        } else if sender.currentTitle == "20%" {
            tip = 0.2
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        person = Int(sender.value) + 2
        personNumberLabel.text = String(person)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        if bill != "" {
            billTotal = Float(bill)!
            let result = billTotal * (1 + tip) / Float(person)
            finalResult = String(format: "%.2f", result)
        }
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.finalResult = finalResult
            destinationVC.tip = Int(tip * 100)
            destinationVC.person = person
        }
    }

}

