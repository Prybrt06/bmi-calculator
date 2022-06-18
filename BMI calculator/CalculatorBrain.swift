//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Priyabrat  Duarah on 31/05/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain
{
    var height : Float?
    var weight : Float?
    
    var bmi : BMI?

    mutating func calculateBMI(height: Float, weight: Float)
    {
        self.height = height
        self.weight = weight
        
        let bmiValue = weight/(height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .cyan)
        }
        
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .systemGreen)
        }
        
        else
        {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .systemPink)
        }
    }
    
    func getBMIValue() -> String
    {
        let bmiTo2DecimalPoint = String(format: "%0.2f", bmi?.value ?? 0.0)
        
        return bmiTo2DecimalPoint
    }
    
    func getAdvice() -> String
    {
        return bmi?.advice ?? "Nil"
    }
    
    func getColor() -> UIColor
    {
        return bmi?.color ?? .white
    }
}
