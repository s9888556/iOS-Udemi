//
//  CalculatorBrain.swift
//  11 BMI Calculator
//
//  Created by Сергей П on 05.08.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:#colorLiteral(red: 0.5, green: 0.8, blue: 1, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color:#colorLiteral(red: 0, green: 0.8, blue: 0.5, alpha: 1))
        } else {
                bmi = BMI(value: bmiValue, advice: "Eat less pies!", color:#colorLiteral(red: 1, green: 0.5, blue: 0.8, alpha: 1))
        }
    }
    
    func getBMIvalue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .gray
    }
}
