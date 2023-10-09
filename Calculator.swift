//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Simon Oh on 9/26/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct Calculator {
    
    var bmi: BMI?
    
    mutating func calculateBMI(_ weight: Float, _ height: Float) {
        let tempBMI = weight / (height * height)
        if tempBMI < 18.5 {
            bmi = BMI(value: tempBMI, valueString: String(format: "%.2f", tempBMI), advice: "Underweight", color: UIColor.yellow)
        }
        else if tempBMI < 24.9 {
            bmi = BMI(value: tempBMI, valueString: String(format: "%.2f", tempBMI), advice: "Good weight", color: UIColor.green)
        }
        else {
            bmi = BMI(value: tempBMI, valueString: String(format: "%.2f", tempBMI), advice: "Overweight", color: UIColor.red)
        }
    }
    
    func getBMI() -> String {
        if let safeBMI = bmi?.valueString { //Optional binding. Allows for unwrapping in conditional statements
            return safeBMI
        }
        return "0.0"
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Values"
    }

    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
//    func getBMI() -> String {
//        return bmi?.valueString ?? "0.0" //Nil coalescing operator. If bmi is not nil, return value stored in bmi. If nil, return "0.0"
//    }
}
