//
//  ResultsViewController.swift
//  12 Tipsy
//
//  Created by Сергей П on 15.08.2023.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settigsLabel: UILabel!
    
    var finalResult = "0.0"
    var tip = 10
    var person = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = finalResult
        settigsLabel.text = "Split vetween \(person) people, with \(tip)% tip."
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
