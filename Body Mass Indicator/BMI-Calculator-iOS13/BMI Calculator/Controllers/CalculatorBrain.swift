//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aknazar Janibek on 6/16/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        let color = (underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), healthy: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), overweight: #colorLiteral(red: 1, green: 0.3305417597, blue: 0.3792247902, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more rice!", color: color.underweight)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat as usual!", color: color.healthy)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less rice!", color: color.overweight)
        }
    }
    
    func getBMIValue() -> String {
        let bmiDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
