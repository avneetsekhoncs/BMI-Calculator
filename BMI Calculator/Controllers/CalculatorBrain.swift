//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Avneet Sekhon on 2023-05-26.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiRounded = String(format: "%0.1f", bmi?.value ?? 0.0)
        return bmiRounded
    }

    mutating func calculateBMI(height: Float, weight: Float) {

        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are healthy", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
